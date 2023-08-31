class CreateSoftSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :soft_skills do |t|
      t.string :skill

      t.timestamps
    end
  end
end
