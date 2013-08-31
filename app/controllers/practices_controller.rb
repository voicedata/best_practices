class PracticesController < ApplicationController
  before_filter :authenticate_user!, except: :index
  def index
    @practices = Practice.all
  end
  def new
    @practice = Practice.new
  end
end
