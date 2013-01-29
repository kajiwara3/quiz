require 'spec_helper'

describe Admin::AdministratorsController do
  login_admin

  it 'should be index' do
    get 'index'
    response.should be_success
  end
end
