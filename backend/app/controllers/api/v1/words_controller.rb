class Api::V1::WordsController < ApplicationController
  def index
    @words = Word.all

    render json: @words
  end

  def show
    @word = Word.find(params[:id])

    render json: @word
  end
end
