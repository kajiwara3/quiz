class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
  end

  def create
    redirect_to wellcome_path
  end

  def wellcome
  end
end
