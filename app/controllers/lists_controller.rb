class ListsController < ApplicationController
  def index
    if params[:query].present?
      @lists = List.search_by_tag_and_friend(params[:query])
      @lists = @lists.reverse
    else
      @follows = Follow.all
      @lists_followed = @follows.where(user_id: current_user.id).order('follows.created_at').reverse
      @lists = []
      @lists_followed.each do |f|
        @lists << f.list
      end
    end
  end

  def new
    @list = List.new
  end

  def create

    @list = List.new(list_params)

    @list.user = current_user
    if @list.save
      results = params["list"]["tag_ids"]
      results.each do |r|
        ListTag.create(tag_id: r, list_id: @list.id)
      end
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
    @listtags = ListTag.where(list_id: @list)
    @items = Item.where(list_id: @list)
    @comment = Comment.new
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    @list.listTags.destroy_all
    params[:list][:tag_ids].each do |tag_id|
      @list.listTags.create(tag_id: tag_id)
    end
    redirect_to list_path(@list)
  end

  def edit
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:list_type, :name, :photo, :description, :tag_ids)
  end

end
