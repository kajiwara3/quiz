# coding: utf-8
require 'spec_helper'
describe "examinations/index.html.erb" do
  before do
    Factory.create :examination_before
    Factory.create :examination_in_service
    Factory.create :examination_end
    search = Examination.search(params[:q])

    assign :search, search
    assign :examinations, search.result.in_service.order(:id).page(params[:page]).per(5)
    render
  end

  it "期間中のテスト名が表示される" do
    rendered.should =~ /examination_service/
  end

  it '期間前のテスト名は表示されない' do
    rendered.should_not =~ /examination_before/
  end

  it "期間後のテスト名は表示されない" do
    rendered.should_not =~ /examination_end/
  end
end
