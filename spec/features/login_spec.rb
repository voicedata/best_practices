require 'spec_helper'

describe "login" do
  context "when not logged in" do
    it "shows login page" do
      Warden.test_mode!
      logout :user
      visit practices_path
      page.should have_content "sign in or sign up"
      Warden.test_reset!
    end
  end
end
