require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  describe "photos#index action" do

    it "should display all photos in db" do
      user = FactoryBot.create(:user)
      sign_in user

      get :index
      expect(response).to have_http_status (:success)
    end
  end

  describe "photos#new action" do
    it "should successfully show the new form" do
      user = FactoryBot.create(:user)
      sign_in user

      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
