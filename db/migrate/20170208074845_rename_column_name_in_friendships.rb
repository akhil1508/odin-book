class RenameColumnNameInFriendships < ActiveRecord::Migration[5.0]
  def change
    rename_column :friendships, :sender_id, :user_id
  end
end
# I realized I was complicating stuff by putting in a sender_id and giving it as foreign key. So I renamed it to use rails default convention to user_id. This is the purpose of this migration. Moving on.