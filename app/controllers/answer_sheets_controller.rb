class AnswerSheetsController < ApplicationController
  def mylogs
    @user = User.find(current_user.id)
    # response Last-Modifiedヘッダ
    @answer_sheets = current_user.answer_sheets.page(params[:page]).per(5)
    if stale?(@user)
      logger.debug "===================== <changed>"
      # 重たい処理
      # @answer_sheets = current_user.answer_sheets.page(params[:page]).per(5)
    end
  end
end
