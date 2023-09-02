class AddScoreToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :score, :integer
  end
end
