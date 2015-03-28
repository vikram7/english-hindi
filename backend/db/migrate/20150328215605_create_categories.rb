class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :part_of_speech, null: false

      t.timestamps
    end
  end
end
