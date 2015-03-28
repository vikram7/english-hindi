class WordSerializer < ActiveModel::Serializer
  attributes :id, :text_hindi, :text_romanized, :meaning_id, :category_id

  belongs_to :category_id
  belongs_to :meaning_id
end
