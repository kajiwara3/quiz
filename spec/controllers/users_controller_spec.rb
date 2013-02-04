# coding: utf-8
require 'spec_helper'

describe UsersController do
  login_user
  context "ログインができている場合" do
    it "should have a current_user" do
      subject.current_user.should_not be_nil
    end
  end

  context "正常系の場合のレスポンス" do
    subject {response}
    it 'should be successful' do
      get 'show'
      should be_success
    end

    it "正しくユーザーを登録すると、wellcome_pathにリダイレクトされる" do
      user2 = Factory.attributes_for(:user2)
      post :create, user: user2
      response.should redirect_to :wellcome
    end
  end
end
