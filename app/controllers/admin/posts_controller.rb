class Admin::PostsController < ApplicationController
layout 'admin'

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@user = @posts_user
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
    	@post = Post.find(params[:id])
	    @post.update(post_params)
	    redirect_to admin_posts_path
	end

	def destroy
	    post = Post.find(params[:id])
	    post.destroy
	    redirect_to admin_posts_path
	end

	private
    def post_params
      	params.require(:post).permit(:user_id,
	  							     :country_id,
	  							     :visa,
	  							     :vaccine_id,
	  							     :comment_id,
	  							     :image,
	  							     :memo,
	  							     :depature_date,
	  							     :return_date,
	  							     :video)
    end

end

