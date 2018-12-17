class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @lists = @user.lists
    @likes = Like.where(user_id: @user.id)
    @bookmarks = Bookmark.where(user_id: @user.id)
  end

  def profile
    @user = current_user
    @lists = @user.lists
    @likes = Like.where(user_id: @user.id)
    @bookmarks = Bookmark.where(user_id: @user.id)
    render :show
  end
end
