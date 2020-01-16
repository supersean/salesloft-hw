class Api::ManagedUsersController < Api::BaseController

  def index
    query = { page: params[:page], per_page: params[:per_page] }
    response = get_user_repository.get_users(query)
    puts response.inspect
    render json: {
      users: response[:users],
      errors: response[:errors] 
    }
  end


  def letter_frequencies
    response = get_all_users
    users = response[:users]
    frequencies = Hash.new(0)
    users.each do |user|
      user[:email].split("").each do |char|
        list = add_frequency_to_list(frequencies, char)
      end
    end
    sorted_frequencies = frequencies.sort_by{|k,v| v}.reverse
    render json: {
      letterFrequencies: sorted_frequencies,
      errors: response[:errors]
    }
  end

  def duplicates
    response = get_all_users
    users = response[:users]
    entries = []
    users.each do |user|
      entries.each do |entry|
        if get_duplicate_likelihood(user[:email], entry[:base]) < 3 
          entry[:duplicates].push user[:email]
          next
        end
      end
      entries.push({base: user[:email], duplicates: []})
    end
    render json: {
      duplicates: entries.select { |x| not x[:duplicates].empty?},
      errors: response[:errors]
    }
  end

  private

    def get_duplicate_likelihood a, b
      # only care about username, not email provider
      a = a.split("@")[0]
      b = b.split("@")[0]
      levenshtein a, b
    end

    # returns number of substitutions required to change
    # string a into string b
    def levenshtein a, b
      return levenshtein b, a if b.length < a.length

      distance = b.length - a.length
      for i in 0..a.length do
        distance += 1 unless a[i] == b[i]
      end
      distance
    end

    
    def get_all_users
      query = {include_paging_counts: true, page: 1, per_page: 100}
      users = []
      errors = []
      total_count = 0
      loop do
        response = get_user_repository.get_users(query) 
        users.concat response[:users]
        total_count = response[:metadata][:paging][:total_count]
        errors = response[:errors]
        query[:page] += 1
      break if users.length >= total_count
      end
      return {users: users, errors: errors}
    end

    def add_frequency_to_list list, char
      return list if ["@", "."].include? char
      list[char] += 1
    end

    def get_user_repository
      if @user_repository.nil?
        @user_repository = ManagedUserRepository.new(SalesloftService.new)
      end
      @user_repository
    end

end