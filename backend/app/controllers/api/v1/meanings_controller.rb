class Api::V1::MeaningsController < ApplicationController
  def index
    @meanings = Meaning.all

    render json: @meanings
  end

  def show
    @meaning = Meaning.find(params[:id])

    render json: @meaning
  end
end
