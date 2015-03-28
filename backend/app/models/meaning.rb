class Meaning < ActiveRecord::Base
  belongs_to :category
  has_many :words

  validates :text, presence: true, uniqueness: true
end
