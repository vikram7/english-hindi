class Api::V1::WordsController < ApplicationController
  def index
    @words = Word.all

    render json: @words
  end

  def show
    @word = Word.find(params[:id])

    render json: @word
  end

  def create
    word = Word.new(create_word_params)

    if word.save
      render json: word,
        status: :created,
        location: [:api, :v1, word]
    else
      render json: { errors: word.errors }, status: :unprocessable_entity
    end
  end

  private

  def create_word_params
    params.require(:word).permit(:text_hindi, :text_romanized, :category_id, :meaning_id)
  end

end
