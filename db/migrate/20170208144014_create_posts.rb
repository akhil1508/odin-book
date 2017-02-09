class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.timestamps
    end
  end
end
#done? Okay so now move on to the models and how I structured friendships
# Put on your thinking cap coz this might be confusing
# open up the friendship.rb and user.rb model files

