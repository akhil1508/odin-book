class CreateFriendshipsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :consent
    end
  end
end
# So, you there?yes Okay and then I created a friendships table to handle friendships. I created a sender_id for request sender and receiver id for reception and consent for whether he/she accepted or n