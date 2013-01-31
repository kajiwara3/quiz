# coding: utf-8
require 'spec_helper'

describe ExaminationsController do
  login_user

  before do
    @test_before = Factory.create :examination_before
    @test_in_service = Factory.create :examination_in_service
    @test_end = Factory.create :examination_end

    get 'index'
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

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
