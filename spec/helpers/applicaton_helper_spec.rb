require 'spec_helper'

describe ApplicationHelper do
  context "user signed in" do
    before do
      helper.stub(:user_signed_in?).and_return true
    end
    it "returns add link and sign out link" do
      helper.admin_link.should include "Add"
      helper.admin_link.should include "Sign out"       
    end
  end
  context "user signed out" do
    before do
      helper.stub(:user_signed_in?).and_return false 
    end
    it "returns sign_in link" do
      helper.admin_link.should include "Sign in"
    end
  end
end
