class Api::ManagedUsersController < Api::BaseController

  def index
    render json: SalesloftService.new.get_users
  end

end