class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @list = List.find(params[:item][:list_id])
    @item = Item.new(item_params)
    @item.list = @list
    if @item.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @list = @item.list
    @item.destroy
    redirect_to list_path(@list)
  end

  def update
    @item = Item.find(params[:id])
    @list = @item.list
    @item.update(item_params)
    redirect_to list_path(@list)
  end

  def edit
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :photo, :description, :list_id)
  end
end
