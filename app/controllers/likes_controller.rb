class LikesController < ApplicationController
  respond_to :js, :json, :html
  # def create
  #   @user = current_user.id
  #   @item = Item.find(params[:item_id])
  #   @list = List.find(params[:list_id])
  #   likes = {user_id: @user, item_id: @item.id}
  #   @like = Like.new(likes)
  #   @like.save!
  # end

  # def destroy
  #   item = Item.find(params[:item_id])
  #   item.likes.where(user_id: current_user).destroy_all
  # end

  def create
    @item = Item.find(params[:item_id])
    @user = current_user
    @user.like!(@item)
  end

  def destroy
    @item = Item.find(params[:item_id])
    @user = current_user
    @like = @user.likes.find_by_item_id(params[:item_id])
    @like.destroy!
  end

  # def vote
  #   if !current_user.liked_item?(@item)
  #     @like = Like.create(user_id: current_user, item_id: @item.id)
  #   elsif current_user.liked_item?(@item)
  #     item.likes.where(user_id: current_user).destroy_all
  #   end
  # end


  private

  def like_params
    params.require(:like).permit(:user_id, :item_id)
  end

end
