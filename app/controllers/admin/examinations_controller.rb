# coding: utf-8
class Admin::ExaminationsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @examinations = Examination.order(:id).page(params[:page]).per(5)
  end

  def show
    @examination = Examination.find(params[:id])
  end
end
