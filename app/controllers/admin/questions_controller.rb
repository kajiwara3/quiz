# coding: utf-8
class Admin::QuestionsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @examination = Examination.find(params[:examination_id])
    @questions = Kaminari::paginate_array(@examination.questions.order(:id)).
                  page(params[:page]).per(5)
  end

  def show
    @question = Question.find(params[:id])
    @examination = @question.examination
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.assign_attributes params[:question]
    if @question.save
      return redirect_to [:admin, @question.examination, @question],
        notice: '更新が完了しました。'
    end
    flash[:error] = '更新に失敗しました。'
    return render 'show'
  end
end
