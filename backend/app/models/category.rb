class Category < ActiveRecord::Base
  has_many :meanings

  validates :part_of_speech, presence: true, uniqueness: true
end
