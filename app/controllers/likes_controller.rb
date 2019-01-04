class LikesController < ApplicationController
  respond_to :js, :json, :html

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

  private

  def like_params
    params.require(:like).permit(:user_id, :item_id)
  end
end
