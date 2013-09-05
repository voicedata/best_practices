require 'spec_helper'

describe PracticesController do

  let(:dummy){"dummy"}

  describe "GET 'index'" do
    before do
      Practice.stub(:contents).and_return dummy 
    end
    it "returns http success" do
      get 'index'
      expect(assigns[:practices]).to eq dummy 
      response.should be_success
      expect(response).to render_template :index 
    end
  end

  describe "GET 'new'" do
    context "when user signed in" do
      it "render #new page" do
        Practice.stub(:new).and_return dummy 
        sign_in
        get "new"
        expect(assigns[:practice]).to eq dummy 
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
