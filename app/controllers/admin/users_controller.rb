# coding: utf-8
class Admin::UsersController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @users = User.order(:id).page(params[:page]).per(5)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.assign_attributes params[:user]

    if @user.save
      return redirect_to [:admin, @user], notice: "ユーザー情報を更新しました"
    end
    return render "edit"
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      return redirect_to :admin_users, notice: "削除しました"
    end
    flash[:notice] = '削除に失敗しました'
    return render "show"
  end
end
