class RemoveAreaFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :area, :string
  end
end
