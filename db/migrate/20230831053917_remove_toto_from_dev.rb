class RemoveTotoFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :toto, :string
  end
end
