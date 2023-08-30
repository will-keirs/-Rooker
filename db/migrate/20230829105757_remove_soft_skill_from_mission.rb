class RemoveSoftSkillFromMission < ActiveRecord::Migration[7.0]
  def change
    remove_column :missions, :soft_skill, :enum
  end
end
