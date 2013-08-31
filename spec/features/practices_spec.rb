require "spec_helper"

describe "best practices page" do
  before do
    @user = create :user
  end
  context "when I have 5 contents in database" do
    before do
      @practices = []
      5.times { @practices << create(:practice) }
    end
    it "lists all 5 items" do
      visit practices_path
      @practices.each do |p|
        page.should have_content p.title    
        page.should have_content p.content
      end  
    end
  end
  context "when I don't have any content" do
    it "display no content massage" do
      visit practices_path
      page.should have_content "no content"
    end
  end
  context "when user logged in" do
    before do
      login_as @user
      visit practices_path
    end
    it "display add and sign out links" do
      page.should have_link "Add"
      page.should have_link "Sign out"
    end
  end

  context "when user not logged in" do
    before do
      logout @user
      visit practices_path
    end
    it "display sign in link" do
      page.should have_content "Sign in"
    end
  end
end
