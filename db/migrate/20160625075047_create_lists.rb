class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :words

      t.timestamps null: false
    end
  end
end
