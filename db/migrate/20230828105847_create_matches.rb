class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.text :comment
      t.boolean :accepted
      t.references :dev, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
