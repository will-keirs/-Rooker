class AddDiplomaToDevs < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :diploma, :string
  end
end
