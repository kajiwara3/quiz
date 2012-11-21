class Admin::UsersController < Admin::Base
  def index
    @users = User.order(:id).page(params[:page]).per(5)
  end
end
