class AddUserNameToList < ActiveRecord::Migration
  def change
    add_column :lists, :username, :string
  end
end
