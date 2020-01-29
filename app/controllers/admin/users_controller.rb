class Admin::UsersController < ApplicationController
layout 'admin'

	def index
		@users = User.all
	end
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
	    redirect_to admin_users_path
	end

	def destroy
	    @user = User.find(params[:id])
	    @user.destroy
	    redirect_to admin_users_path
	end

	  private
	    def user_params
	    	params.require(:user).permit(:name,
	    								  :email,
	    								  :password
	    								)
	    end
end
