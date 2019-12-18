class PostsController < ApplicationController
before_action :authenticate_user!
before_action :ensure_correct_user,{only: [:edit, :update]}

	def new
		@post = Post.new
		@post = current_user.posts.build
	end


	def create
    	@post = Post.new(post_params)
	    @post.user_id = current_user.id
		@post.save
		redirect_to posts_path
	end

	def index
		@posts = Post.all
		@user = current_user
	end

	def show
		@posts = Post.find(params[:id])
		@user = @posts_user
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
    	@post = Post.find(params[:id])
	    @post.update(post_params)
	    redirect_to posts_path
	end

	def destroy
	    post = Post.find(params[:id])
	    post.destroy
	    redirect_to posts_path
	end



	 private
    def post_params
      params.require(:post).permit(:user_id,
      							   :country_id,
      							   :visa,
      							   :vaccine_id,
      							   :comment_id,
      							   :image,
      							   :movie,
      							   :memo,
      							   :route_id,
      							   :depature_date,
      							   :return_date
      							   )
    end

    def ensure_correct_user
      @post = Post.find(params[:id])
      if current_user != @post.user
        redirect_to posts_path
      end
    end

end
