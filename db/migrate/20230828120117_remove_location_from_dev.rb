class RemoveLocationFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :location, :string
  end
end
