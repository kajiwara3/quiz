class Admin::AdministratorsController < Admin::Base
  def index
    @administrators = Administrator.order(:id).page(params[:page]).per(5)
  end

  def show
  end
end
