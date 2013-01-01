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

  def start_examination
    @examination = Examination.find_by_id(params[:id])
    @answer_sheet = AnswerSheet.create_answer_sheet(@examination, current_user)
    session[:examination_id] = @examination.id
    session[:answer_sheet_id] = @answer_sheet.id
    return redirect_to [@examination, :questions]
  end

  def complete_examination
    answer_sheet = AnswerSheet.find_by_id(session[:answer_sheet_id])
    total_credit = AnswerSheet.total_credits(answer_sheet.id)
    AnswerSheet.conplate_answer_sheet(answer_sheet, total_credit.sum.to_i)
    session.delete :answer_sheet_id
    session.delete :examination_id
    return redirect_to :examinations, notice: 'テストが完了しました'
  end
end
