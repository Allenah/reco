class ItemsController < ApplicationController
  def new
    @item = Item.new
    @comment = Comment.new
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
    @list = List.find(params[:list_id])
  end

  def autocomplete
    results = AutocompleteSearchService.new(params[:q]).call
    render json: results
  end

  private

  def item_params
    params.require(:item).permit(:name, :photo, :remote_photo, :description, :list_id)
  end
end
