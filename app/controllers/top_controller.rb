# coding: utf-8
class TopController < ApplicationController
  caches_action :index, if: lambda { !user_signed_in? }
  def index
  end
end
