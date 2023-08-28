class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.integer :language
      t.integer :soft_skill
      t.string :area
      t.string :location
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
