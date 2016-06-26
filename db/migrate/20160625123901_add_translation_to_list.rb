class AddTranslationToList < ActiveRecord::Migration
  def change
    add_column :lists, :translation, :string
  end
end
