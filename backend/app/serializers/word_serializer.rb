class WordSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :text_hindi, :text_romanized, :forvo_url, :meaning_id, :category_id

  has_one :category
  has_one :meaning
end
