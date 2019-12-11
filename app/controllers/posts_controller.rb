class PostsController < ApplicationController
	def new
		@post = Post.new
	end

	def create
		post = Post.new(blog_params)
        post.save
        redirect_to posts_path
	end

	def index
		@posts = post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def destroy
		
	end

	def new
		
	end

	 private
    def post_params
      params.require(:post).permit(:user_id,
      							   :country_id,
      							   :visa_id,
      							   :vaccine_id,
      							   :comment_id,
      							   :image_id,
      							   :movie,
      							   :memo,
      							   :route,)
    end

end
