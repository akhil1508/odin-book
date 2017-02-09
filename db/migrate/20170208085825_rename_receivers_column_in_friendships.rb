class RenameReceiversColumnInFriendships < ActiveRecord::Migration[5.0]
  def change
    rename_column :friendships, :receiver_id, :friend_id
  end
end
# Then I realized the same for friendships too. So I renamed it too. Move on.