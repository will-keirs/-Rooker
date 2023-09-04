class AddInstaToDev < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :insta_link, :string
  end
end
