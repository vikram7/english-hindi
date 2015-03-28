class Category < ActiveRecord::Base
  has_many :meanings
  has_many :words

  validates :part_of_speech, presence: true, uniqueness: true
end
