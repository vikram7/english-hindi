class Word < ActiveRecord::Base
  belongs_to :category
  belongs_to :meaning

  validates :text_hindi, presence: true
  validates :text_romanized, presence: true
end
