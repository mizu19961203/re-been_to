class UsersController < ApplicationController
before_action :authenticate_user!
before_action :ensure_correct_user,{only: [:edit, :update]}
  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Post was successfully updated"
        redirect_to user_path(current_user)
    else
      render template: edit_user_path
    end
  end

  private
    def user_params
    	params.require(:user).permit(:name)
    end

    def ensure_correct_user
      @user = User.find(params[:id])
      if current_user != @user
        redirect_to user_path(current_user)
      end
    end
end
