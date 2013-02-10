# encoding: utf-8
require 'spec_helper'
module HelperMethods
  def logout_user(user = @current_user)
    Capybara.reset_sessions!
    visit destroy_user_session_url
  end

  def login_user
    logout_user if @current_user
    @user = FactoryGirl.create(:user1)
    @user.confirm!

    visit new_user_session_url
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button 'Sign in'
  end
end

