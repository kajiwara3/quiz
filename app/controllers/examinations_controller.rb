# coding: utf-8
class ExaminationsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @examinations = Examination.in_service.order(:id).
                      page(params[:page]).per(5)
  end

  def show
    @examination = Examination.find_by_id(params[:id])
  end
end
