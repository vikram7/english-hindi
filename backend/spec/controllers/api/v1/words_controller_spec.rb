require 'rails_helper'
require 'pry'

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

  describe "POST #create" do
    it "creates a new word" do
      prev_count = 0
      word = FactoryGirl.build(:word)
      meaning = word.meaning
      category = word.category
      word_attrs = {
        text_hindi: word.text_hindi,
        text_romanized: word.text_romanized,
        meaning_id: meaning.id,
        category_id: category.id
      }

      post :create, word: word_attrs

      expect(response.status).to eq 201
      expect(Word.all.count).to eq prev_count + 1
      expect(json).to be_json_eq WordSerializer.new(Word.first)
    end

    it "fails if required attributes are missing" do
      prev_count = 0
      word = FactoryGirl.build(:word)
      meaning = word.meaning
      category = word.category
      word_attrs = {
        text_hindi: "",
        text_romanized: word.text_romanized,
        meaning_id: meaning.id,
        category_id: category.id
      }

      post :create, word: word_attrs

      expect(response.status).to eq 422
      expect(Word.all.count).to eq prev_count
    end
  end
end

