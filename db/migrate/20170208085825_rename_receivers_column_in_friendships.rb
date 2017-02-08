class RenameReceiversColumnInFriendships < ActiveRecord::Migration[5.0]
  def change
    rename_column :friendships, :receiver_id, :friend_id
  end
end
