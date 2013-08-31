require 'spec_helper'

describe PracticesController do
  describe "GET 'index'" do
    before do
      @practices=[]
      3.times do
        @practices << create(:practice)
      end
    end
    it "returns http success" do
      get 'index'
      expect(assigns[:practices]).to eq @practices
      response.should be_success
      expect(response).to render_template :index 
    end
  end

  describe "GET 'new'" do
    context "when user signed in" do
      it "render #new page" do
        sign_in
        get "new"
        subject.current_user.should_not be_nil
        expect(assigns[:practice]).to be_new_record
        response.should be_success
        expect(response).to render_template :new        
      end
    end
    context "when user signed out" do
      it "redirects to sign in page" do
        sign_in nil
        get "new"
        expect(response).to redirect_to new_user_session_path        
      end
    end
  end

end
