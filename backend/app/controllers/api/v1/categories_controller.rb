class Api::V1::CategoriesController < ApplicationController
  def index
    if params[:part_of_speech]
      @categories = Category.where(part_of_speech: params[:part_of_speech])
    else
      @categories = Category.all
    end

    render json: @categories
  end

  def show
    @category = Category.find(params[:id])

    render json: @category
  end
end
