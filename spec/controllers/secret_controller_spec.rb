require 'rails_helper'

RSpec.describe SecretController, type: :controller do

  describe "GET #content:text" do
    it "returns http success" do
      get :content:text
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user:references" do
    it "returns http success" do
      get :user:references
      expect(response).to have_http_status(:success)
    end
  end

end
