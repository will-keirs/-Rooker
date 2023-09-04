class RevertDevlangmissionsAndDevsoftmissionsForeignKeys < ActiveRecord::Migration[7.0]
  def change
    change_column :devlangmissions, :dev_id, :bigint, null: false
    change_column :devlangmissions, :mission_id, :bigint, null: false
    change_column :devsoftmissions, :dev_id, :bigint, null: false
    change_column :devsoftmissions, :mission_id, :bigint, null: false
  end
end
