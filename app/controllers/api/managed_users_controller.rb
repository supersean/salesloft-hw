class Api::ManagedUsersController < Api::BaseController

  def index
    puts params.inspect
    query = { page: params[:page], per_page: 10 }
    render json: ManagedUserRepository.new(SalesloftService.new).get_users(query)
  end

end