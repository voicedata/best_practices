class SiteController < ApplicationController
  before_filter :authenticate_user!
  def home
  end
  def practices
  end
end
