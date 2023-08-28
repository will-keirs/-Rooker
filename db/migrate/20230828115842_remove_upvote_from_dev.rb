class RemoveUpvoteFromDev < ActiveRecord::Migration[7.0]
  def change
    remove_column :devs, :upvote, :integer
  end
end
