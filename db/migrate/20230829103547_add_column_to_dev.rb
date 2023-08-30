class AddColumnToDev < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :location, :string
  end
end
