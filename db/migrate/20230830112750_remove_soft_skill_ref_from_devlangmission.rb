class RemoveSoftSkillRefFromDevlangmission < ActiveRecord::Migration[7.0]
  def change
    remove_reference :devlangmissions, :soft_skill, null: false, foreign_key: true
  end
end
