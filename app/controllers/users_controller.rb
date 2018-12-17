class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @lists = @user.lists
  end

  def profile
    @user = current_user
    @lists = @user.lists
    render :show
  end
end
