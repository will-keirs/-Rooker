class RemoveDiplomaToDevs < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :diploma, :string
  end
end
