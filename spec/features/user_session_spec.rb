# coding: utf-8
require 'spec_helper'
describe 'Deviseでのセッション機能' do
  before do
  end

  it 'ログインページが表示できること' do
    visit '/'
    page.should have_content "sign_in"
  end

  it 'ログインできること' do
    login_user
  end

end
