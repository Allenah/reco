class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    @listtags = ListTag.where(list_id: @list)
    @items = Item.where(list_id: @list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  def edit
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:list_type, :name, :photo, :description)
  end

end
