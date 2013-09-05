class PracticesController < ApplicationController
  before_filter :authenticate_user!, except: :index
  respond_to :html, :json
  def index
    @practices = Practice.contents
    respond_with @practices
  end
  def new
    @practice = Practice.new
    respond_with @practice
  end
end
