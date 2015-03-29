require 'rails_helper'

RSpec.describe Api::V1::MeaningsController, :type => :controller do
  describe "GET #index" do
    it "returns all meanings, ordered by date created (most recent first)" do
      newest = FactoryGirl.create(:meaning, created_at: Time.now - 10)
      middlest = FactoryGirl.create(:meaning, created_at: Time.now - 30)
      oldest = FactoryGirl.create(:meaning, created_at: Time.now - 100)

      ordered_meanings = [newest, middlest, oldest]

      get :index

      serialized_meanings = ActiveModel::ArraySerializer.new(ordered_meanings, root: :meanings)

      expect(response.status).to eq 200

      expect(json).to be_json_eq(serialized_meanings)
    end
  end

  describe "GET #show" do
    it "returns a single meaning" do
      word = FactoryGirl.create(:word)

      meaning = word.meaning
      category = word.category

      serialized_meaning = MeaningSerializer.new(meaning, include: [:word])

      get :show, id: meaning.id

      expect(json).to be_json_eq(serialized_meaning)
    end
  end
end

