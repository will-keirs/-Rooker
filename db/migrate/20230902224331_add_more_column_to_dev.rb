class AddMoreColumnToDev < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :photo, :string
    add_column :devs, :description, :text
    add_column :devs, :github_link, :string
    add_column :devs, :linkedin_link, :string
    add_column :devs, :website_link, :string
    add_column :devs, :twitter_link, :string
    add_column :devs, :facebook_link, :string
  end
end
