class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :text_hindi, null: false
      t.text :text_romanized, null: false
      t.text :meaning_id, null: false
      t.text :category_id, null: false

      t.timestamps
    end
  end
end
