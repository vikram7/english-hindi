class MeaningSerializer < ActiveModel::Serializer
  attributes :id, :text, :category_id

  belongs_to :category_id
  has_many :words
end
