class Api::V1::WordsController < ApplicationController
  def index
    if params[:random]
      @words = Word.find_by_sql("select * from words order by random() limit 1;")
    else
      @words = Word.all
    end
    render json: @words
  end

  def show
    @word = Word.find(params[:id])

    render json: @word
  end

  def new

  end

  def destroy
    word = Word.find(params[:id])
    word.destroy

    render json: word
  end

  def create
    word_params = create_word_params
    word = Word.new(text_hindi: word_params[:text_hindi], text_romanized: word_params[:text_romanized])
    word.category = Category.find_by(part_of_speech: word_params[:category_part_of_speech])

    if word_params[:meaning_text].strip != ""
      meaning = Meaning.find_or_create_by!(category_id: word.category.id, text: word_params[:meaning_text])
      word.meaning = meaning
    else
      word.errors.messages[:meaning_text] = "can't be blank"
    end

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
    params.require(:word).permit(:text_hindi, :text_romanized, :category_part_of_speech, :meaning_text)
  end

end
