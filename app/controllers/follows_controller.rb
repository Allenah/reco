class FollowsController < ApplicationController
  respond_to :js, :json, :html

  def create
    @list = List.find(params[:list_id])
    @user = current_user
    @user.follow!(@list)
  end

  def destroy
    @list = List.find(params[:list_id])
    @user = current_user
    @follow = @user.follows.find_by_list_id(params[:list_id])
    @follow.destroy!
  end
end
