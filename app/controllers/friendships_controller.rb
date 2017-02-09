class FriendshipsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    @user = User.find(params[:friendship][:user_id])
    @friend = User.find(params[:friendship][:friend_id])
    @friendship = @user.friendships.build(friend_id: @friend.id)
    if @friendship.save
      flash[:success] = "Request successfully sent"
      redirect_to root_path
    else
      flash[:danger] = "Request not sent"
      redirect_to root_path
    end
  end
end
#I'm here me too
# open up the new.html.erb view for friendships. Wait, I haven't created any friendship views yet.
# Do me the honor of creating the new directory and the file.
# done? Yes be in the new file
