class Word < ActiveRecord::Base
  belongs_to :category
  belongs_to :meaning

  validates :text_hindi, presence: true
  validates :text_romanized, presence: true

  def get_forvo_url
    base_url = "http://apifree.forvo.com/action/word-pronunciations/format/json/word/#{self.text_hindi}/language/hi/key/#{ENV['FORVO_API_KEY']}/"
    binding.pry
    encoded_url = URI::encode(base_url)
    response = HTTParty.get(encoded_url)
    if response["items"] != []
      response["items"].first["pathogg"]
    else
      return false
    end
  end
end
