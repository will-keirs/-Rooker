class AddScoreInitiatorToDevs < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :score, :integer
    remove_column :devs, :score, :integer
    add_column :matches, :score, :integer, default: 0, null: 0
    add_column :devs, :score, :integer, default: 0, null: 0
  end
end
