class RemoveColumnFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :soft_skill, :enum
  end
end
