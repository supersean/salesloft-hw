class Api::ManagedUsersController < Api::BaseController

  def index
    query = { page: params[:page], per_page: params[:per_page] }
    response = get_user_repository.get_users(query)
    render json: {
      users: response[:users],
      errors: query[:errors] 
    }
  end


  def frequency
    query = { page: 1, per_page: 1000}
    users = get_user_repository.get_users(query)
    frequencies = Hash.new(0)
    users.each do |user|
      user[:email].split("").each do |char|
        frequencies[char] += 1
      end
    end
    render json: {
      data: frequencies.sort_by {|k,v| v }.reverse.to_h,
      error: nil
    }
  end

  def duplicates
  end

  private

    def get_user_repository
      if @user_repository.nil?
        @user_repository = ManagedUserRepository.new(SalesloftService.new)
      end
      @user_repository
    end

end