require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_content("project")
    end
  end

  describe "GET #new" do
    it "returns form" do
      get :new
      expect(page).to have_content('form')
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
