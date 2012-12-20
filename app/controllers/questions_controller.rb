class QuestionsController < ApplicationController
  def index
    @examination = Examination.find_by_id(params[:examination_id])
    @questions = Kaminari::paginate_array(@examination.questions).page(params[:page]).per(1)
  end
end
