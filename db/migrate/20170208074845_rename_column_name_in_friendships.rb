class RenameColumnNameInFriendships < ActiveRecord::Migration[5.0]
  def change
    rename_column :friendships, :sender_id, :user_id
  end
end
