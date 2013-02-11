#coding: utf-8
require 'spec_helper'
describe 'Devisedでのセッション管理' do
  it '管理者トップページが表示できること' do
    visit admin_root_path
    page.should have_content 'sign in'
  end

  it '管理者がログインできること' do
    login_admin
  end
end
