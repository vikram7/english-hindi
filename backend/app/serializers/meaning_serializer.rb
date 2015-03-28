class MeaningSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :text

  has_one :category
  has_many :words
end
