class CategorySerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :part_of_speech

  has_many :meanings
  has_many :words
end
