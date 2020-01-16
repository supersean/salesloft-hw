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
    query = {include_paging_counts: true, page: 1, per_page: 1000}
    response = get_user_repository.get_users(query)
    users = response[:users]
    frequencies = Hash.new(0)
    users.each do |user|
      user[:email].split("").each do |char|
        list = add_frequency_to_list(frequencies, char)
      end
    end
    render json: {
      letterFrequencies: frequencies.sort_by {|k,v| v }.reverse.to_h,
      errors: response[:errors]
    }
  end

  def duplicates
  end

  private

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