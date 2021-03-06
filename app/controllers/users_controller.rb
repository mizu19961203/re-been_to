class UsersController < ApplicationController
before_action :authenticate_user!,:ensure_correct_user,{only: [:edit, :update]}
  def show
  	@user = User.find(params[:id])
  	@posts = @user.posts
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
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
