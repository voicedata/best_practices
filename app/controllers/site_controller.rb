class SiteController < ApplicationController
  before_filter :authenticate_user!, except: :home
  def home
  end
  def practices
  end
end
