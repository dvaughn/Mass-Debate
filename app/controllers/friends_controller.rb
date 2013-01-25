class FriendsController < ApplicationController
  def create
    user = User.find(session[:user_id])
    userToFriend = User.find_by_debateName(params[:user])
    newfriend = Friend.new
    newfriend.friend_name = userToFriend.debateName
    newfriend.friend_id = userToFriend.id
    user.friends << newfriend
    user.save
    redirect_to :controller => :users, :action => :home
  end


  def destroy
  end

end
