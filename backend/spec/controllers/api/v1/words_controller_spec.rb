require 'rails_helper'

RSpec.describe Api::V1::WordsController, :type => :controller do
  describe "GET #index" do
    it "returns all words, ordered by date created (most recent first)" do
      newest = FactoryGirl.create(:word, created_at: Time.now - 10)
      middlest = FactoryGirl.create(:word, created_at: Time.now - 30)
      oldest = FactoryGirl.create(:word, created_at: Time.now - 100)

      ordered_words = [newest, middlest, oldest]

      get :index

      serialized_words = ActiveModel::ArraySerializer.new(ordered_words, root: :words)

      expect(response.status).to eq 200

      expect(json).to be_json_eq(serialized_words)
    end
  end

  describe "GET #show" do
    it "returns a single word" do
      word = FactoryGirl.create(:word)

      serialized_word = WordSerializer.new(word)

      get :show, id: word.id

      expect(json).to be_json_eq(serialized_word)
    end
  end
end

