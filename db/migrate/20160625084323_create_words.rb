class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :base_language
      t.string :translation

      t.timestamps null: false
    end
  end
end
