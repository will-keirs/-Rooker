class RemoveNameFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :name, :string
  end
end
