# coding: utf-8
class Admin::QuestionChoicesController < ApplicationController
  def show
    @question_choice = QuestionChoice.find(params[:id])
  end

  def edit
    @question_choice = QuestionChoice.find(params[:id])
  end

  def update
    @question_choice = QuestionChoice.find(params[:id])
    @question_choice.assign_attributes params["question_choice"]
    if @question_choice.save
      return redirect_to [:admin, @question_choice.question, @question_choice],
        notice: '更新が完了しました。'
    end
    flash[:error] = '更新に失敗しました。'
    render 'show'
  end

  def new
    @question = Question.find(params[:question_id])
    @question_choice = QuestionChoice.new
  end

  def create
    @question = Question.find(params[:question_id])
    @question_choice = QuestionChoice.new
    @question_choice.assign_attributes params[:question_choice]
    if @question_choice.valid?
      @question.question_choices << @question_choice
      return redirect_to [:admin, @question, @question_choice],
        notice: '追加しました。'
    end
    flash[:error] = "以下の問題を確認してください。"
    render 'new'
  end
end
