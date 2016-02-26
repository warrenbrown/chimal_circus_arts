require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #classes" do
    it "returns http success" do
      get :classes
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #camp" do
    it "returns http success" do
      get :camp
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #entertainment" do
    it "returns http success" do
      get :entertainment
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
