class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :description, :text
    add_column :users, :twitter, :string
    add_column :users, :linkedin, :string
    add_column :users, :github, :string
    add_column :users, :facebook, :string
  end
end
