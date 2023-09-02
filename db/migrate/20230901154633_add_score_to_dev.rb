class AddScoreToDev < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :score, :integer
  end
end
