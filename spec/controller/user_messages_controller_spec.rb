require "rails_helper"

RSpec.describe UserMessagesController , type: :controller do
  describe "GET index" do
    it "assigns @user_message" do
      @user_message = UserMessage.new
      get :index
    end

     it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "POST #create " do
    context "valid request" do
      it "returns http success" do
        post :create, params: { user_message: { first_name: "first_name", last_name: "last_name", email: "email", phone_number: "phone_number", message: "message" } }
        expect(response).to have_http_status(302)
      end
    end

    context "invalid request" do
      it "renders the index template" do
        expect(response).to have_http_status(200)  # wraps assert_redirected_to
      end
    end
  end
end