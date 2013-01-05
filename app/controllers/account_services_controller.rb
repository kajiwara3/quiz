class AccountServicesController < ApplicationController
  before_filter :authenticate_user!
  caches_page :show

  def show
  end
end
