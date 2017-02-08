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
    else
      flash[:danger] = "Request not sent"
    end
  end
end
