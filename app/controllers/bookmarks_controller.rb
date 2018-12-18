class BookmarksController < ApplicationController
  respond_to :js, :json, :html

  def create
    @item = Item.find(params[:item_id])
    @user = current_user
    @user.bookmark!(@item)
  end

  def destroy
    @item = Item.find(params[:item_id])
    @user = current_user
    @bookmark = @user.bookmarks.find_by_item_id(params[:item_id])
    @bookmark.destroy!
  end

  def index
    @user = current_user
    @items = Item.joins(:bookmarks).where(bookmarks: { user_id: @user.id }).order('bookmarks.created_at').reverse
  end
end
