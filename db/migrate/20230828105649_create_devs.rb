class CreateDevs < ActiveRecord::Migration[7.0]
  def change
    create_table :devs do |t|
      t.string :name
      t.string :phone
      t.string :area
      t.string :location
      t.integer :upvote
      t.integer :soft_skill
      t.integer :language
      t.string :diploma
      t.boolean :availability

      t.timestamps
    end
  end
end
