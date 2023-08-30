class AddColumToDev < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :name, :string
    add_column :devs, :email, :string
    add_column :devs, :password, :string
    add_column :devs, :phone, :string
    add_column :devs, :area, :string
    add_column :devs, :upvote, :integer
  end
end
