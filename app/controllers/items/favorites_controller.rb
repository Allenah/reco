class Items::FavoritesController < ApplicationController

raise
  before_action :load_item

  def update
    @item.favorite!
  end

  def destroy
    @item.unfavorite!
  end

  private

  def load_item
    @item = Item.find(params[:item_id])
  end

end
