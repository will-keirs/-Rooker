class AddAttributesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :company, :string
    add_column :users, :phone, :string
    add_column :users, :area, :string
    add_column :users, :location, :string
    add_column :users, :upvote, :integer
    add_column :users, :fav, :string
  end
end
