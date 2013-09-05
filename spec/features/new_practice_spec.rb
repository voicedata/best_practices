require "spec_helper"

describe "new practice page" do

  context "when user signed in" do
    let(:practice) { create :practice }
    before do
      login_as create(:user)
      visit new_practice_path
    end

    it "should display new practice page" do
      page.should have_content "Title"
      page.should have_content "Content"
      page.should have_button "Create Practice"
    end

    it "should create one more item" do
      fill_in "Title", with: "test1"
      fill_in "Content", with: "blah blah blah..."
      click_on "Create Practice"
      expect(page).to have_content "Successfully added"
      expect(page).to have_content "test1"
      expect(page).to have_content "blah blah blah..."
      expect(page).to have_content practice.title
      expect(page).to have_content practice.content
    end
  end

  context "when user signed out" do
    it "should display login page" do
      logout
      visit new_practice_path
      page.should have_content "sign in or sign up" 
    end
  end

end
  

