class CreateMeanings < ActiveRecord::Migration
  def change
    create_table :meanings do |t|
      t.text :text, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
    add_index :meanings, :text, unique: true
  end
end
