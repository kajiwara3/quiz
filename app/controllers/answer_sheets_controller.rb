class AnswerSheetsController < ApplicationController
  def mylogs
    @answer_sheets = current_user.answer_sheets.page(params[:page]).per(5)
  end
end
