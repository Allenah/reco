class ListsController < ApplicationController







  def show
    @list = List.find(params[:id])
    @listtags = ListTag.where(list_id: @list)
    @items = Item.where(list_id: @list)

  end

end
