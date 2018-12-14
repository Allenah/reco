class FriendshipsController < ApplicationController
  def index
    @friends = current_user.friends
  end

  def show
    @friendship = Friendship.find(params[:id])
    @friend = User.find_by_id(@friendship.friend_id)
  end
end
