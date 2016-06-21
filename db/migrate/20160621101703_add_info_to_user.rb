class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :description, :text
    add_column :users, :web, :string
  end
end
