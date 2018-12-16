class BookmarksController < ApplicationController
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
end
