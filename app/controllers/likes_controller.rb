class LikesController < ApplicationController

  def create
    @user = current_user.id
    @item = params[:item_id]
    @list = params[:list_id]
    likes = {user_id: @user, item_id: @item.to_i}
    @like = Like.new(likes)

    @like.save!
  end
end
