# coding: utf-8
class QuestionsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @examination = Examination.find_by_id(params[:examination_id])
    @questions = Kaminari::paginate_array(@examination.questions).page(params[:page]).per(10)
  end

  def show
    @question = Question.find_by_id(params[:id])
  end

  def answer
    question_id = params[:id]
    @question_choice = QuestionChoice.find_by_id params[question_id]
    @question = @question_choice.question

    Answer.commit_answer(session[:answer_sheet_id], question_id, @question_choice.id)
    return redirect_to [@question.examination, :questions], notice: '保存しました'
  end
end
