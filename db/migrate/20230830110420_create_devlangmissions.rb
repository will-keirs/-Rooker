class CreateDevlangmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :devlangmissions do |t|
      t.references :dev, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true
      t.references :soft_skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
