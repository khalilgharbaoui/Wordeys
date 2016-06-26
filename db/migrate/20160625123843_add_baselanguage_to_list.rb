class AddBaselanguageToList < ActiveRecord::Migration
  def change
    add_column :lists, :base_language, :string
  end
end
