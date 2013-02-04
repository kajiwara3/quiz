# coding: utf-8
require 'spec_helper'

describe User do
  context "name,emailを指定した場合" do
    before do
      @user = User.new(
        name: "user",
        email: "user@a.jp"
      )
    end
    subject { @user }
    its(:name) {should == 'user'}
    its(:email) {should == 'user@a.jp'}
  end

  context 'name emailをセットしなかった場合' do
    before do
      @user = User.new
    end
    subject { @user }
    it {should_not be_valid}
  end

  context 'nameをセットした場合' do
    before do
      @user = User.new(
                name: 'name'
              )
    end
    subject {@user}
    it {should_not be_valid}
  end

  context '必須項目をすべてをセットした場合' do
    before do
      @user = User.new(
                name: 'test',
                email: 'a@a.jp',
                gender_id: '1',
                privacy_agree: 'true',
                password: 'password',
                password_confirmation: 'password'
              )
    end
    subject {@user}
    it {should be_valid}
  end
end
