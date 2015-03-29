require 'rails_helper'
require 'pry'

RSpec.describe Api::V1::CategoriesController, :type => :controller do
  describe "GET #index" do
    it "returns all categories, ordered by date created (most recent first)" do
      newest = FactoryGirl.create(:category, created_at: Time.now - 10)
      middlest = FactoryGirl.create(:category, created_at: Time.now - 30)
      oldest = FactoryGirl.create(:category, created_at: Time.now - 100)

      ordered_categories = [newest, middlest, oldest]
      get :index

      serialized_categories = ActiveModel::ArraySerializer.new(ordered_categories, root: :categories)
binding.pry
      expect(response.status).to eq 200
      expect(json).to be_json_eq(serialized_categories)
    end
  end

  describe "GET #show" do
    it "returns a single category" do
    end
  end
end

