# coding: utf-8
require 'spec_helper'

describe ExaminationsController do
  shared_examples_for 'Shared Example Group' do
    before do
      p '============ shared_examples_for: test'
    end
    it 'test' do
      p '============ test sample'
    end
  end

  login_user
  before do
    @test_before = Factory.create :examination_before
    @test_in_service = Factory.create :examination_in_service
    @test_end = Factory.create :examination_end
    get 'index'
  end

  context "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  context '期間に応じて正しいオブジェクトを返す場合' do
    it_should_behave_like 'Shared Example Group'

    it "期間内のテストを返す" do
      assigns[:examinations].should =~[@test_in_service]
    end

    it "期間前のテストは返さない" do
      assigns[:examinations].should_not =~[@test_before]
    end

    it "期間後のテストは返さない" do
      assigns[:examinations].should_not =~[@test_end]
    end
  end
end
