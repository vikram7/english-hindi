class AddForvoUrlToWords < ActiveRecord::Migration
  def change
    add_column :words, :forvo_url, :text
  end
end
