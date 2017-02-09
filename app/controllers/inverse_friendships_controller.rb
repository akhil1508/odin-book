class InverseFriendshipsController < ApplicationController
 def index
     if current_user.inverse_friendships
    #what next? do you want to accept? No. THat is not in the controller's index method. Index only handles indexing all of the rows.
        @potential_friends = current_user.friends
    end #now we display potential friends and an accept link in the view. Got it from the bottom?Yes you write the code to display. I will be there as an angel watching from the stars.In view?
  end
  
  def create
    @inverse_friend = User.find(params[:inverse_friend][:potential_friend_id])
    @friendship = current_user.inverse_friendships.find_by(user_id: params[:inverse_friend][:potential_friend_id])
    if params[:inverse_friend][:consent] 
        @friendship.consent = true
        flash[:success]= "You have accepted #{@inverse_friend}'s request"
    else
        @friendship.delete
        flash[:danger]= "You have declined #{@inverse_friend}'s request"
    end
    redirect_to root_url
  end
end
# done now we check What happened dude????????
