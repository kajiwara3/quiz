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
end
