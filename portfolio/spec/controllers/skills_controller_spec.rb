require 'rails_helper'

RSpec.describe SkillsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "renders the :show view" do
      skill = create(:skill)
      get :show, id: skill
      expect(skill.language).to eq(skill.language)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      skill = create(:skill)
      get :edit, id: skill
      expect(response).to have_http_status(:success)
    end
  end

end
