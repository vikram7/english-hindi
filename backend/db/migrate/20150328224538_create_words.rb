class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :text_hindi, null: false
      t.text :text_romanized, null: false
      t.integer :meaning_id, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
    add_index :words, :text_hindi
    add_index :words, :text_romanized
  end
end
