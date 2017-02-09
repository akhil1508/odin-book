class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  #belongs_to :inverse_friend, class_name: "User"
end
#belongs_to is like inheritance?
# belongs_to is not like inheritance. It defines a relationship b/w tables. Just relational databases.
# has many or has one is for having relationship. 
# A user can have many pets and each pet can belong to a user. Got it?
#yes