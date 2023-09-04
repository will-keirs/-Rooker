class ChangeKeysTable < ActiveRecord::Migration[7.0]
  def change
    change_column :devlangmissions, :dev_id,:integer, null: true
    change_column :devlangmissions, :mission_id,:integer, null: true
    change_column :devsoftmissions, :dev_id,:integer, null: true
    change_column :devsoftmissions, :mission_id,:integer, null: true
  end
end
