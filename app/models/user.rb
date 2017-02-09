class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :friendships
  has_many :friends, through: :friendships, foreign_key: :friend_id
  has_many :inverse_friendships, :class_name => "Friendship", foreign_key: :friend_id
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  has_many :posts
end
#so skip the lines that say devise and so on, those are just devise modules for authenticating and registering users
# moving on, each user can have many friendships with many people. How I structured this is the following
# I made each user have many friendships with the friendship table containint user_id and the friend_id
# Now, user_id is gonna be the foreign key in that table corresponding to the id of the logged in user. Do you comprehend? WTF? 
