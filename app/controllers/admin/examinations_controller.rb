# coding: utf-8
class Admin::ExaminationsController < Admin::Base
  before_filter :authenticate_admin_administrator!

  def new
    @examination = Examination.new
  end

  def create
    @examination = Examination.new
    @examination.assign_attributes params[:examination]
    if @examination.save
      return redirect_to [:admin, @examination], notice: '保存しました。'
    end
    flash[:error] = '問題を確認してください'
    return render 'new'
  end

  def index
    @examinations = Examination.order(:id).page(params[:page]).per(5)
  end

  def show
    @examination = Examination.find(params[:id])
  end

  def edit
    @examination = Examination.find(params[:id])
  end

  def update
    @examination = Examination.find(params[:id])
    @examination.assign_attributes params[:examination]
    if @examination.save
      return redirect_to [:admin, @examination], notice: "更新しました"
    end
    flash[:error] = '問題を確認してください'
    return render 'edit'
  end
end
