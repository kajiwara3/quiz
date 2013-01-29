class Admin::AdministratorsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @administrators = Administrator.order(:id).page(params[:page]).per(5)
  end

  def show
  end
end
