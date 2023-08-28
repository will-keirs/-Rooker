class RemovePhoneFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :phone, :string
  end
end
