class PostsController < ApplicationController
before_action :authenticate_user!
before_action :ensure_correct_user,{only: [:edit, :update]}

	def new
		@post = Post.new
		# @post = current_user.posts.build
	end

	def create
    	@post = current_user.posts.build(post_params)
	    @user = current_user
	    if @post.save
	      flash[:notice] = "Post was successfully  created"
	        redirect_to posts_path
	    else
	      @posts = Post.all
	      redirect_to posts_path
	    end

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
	    if @post.update(post_params)
	      flash[:notice] = "Post was successfully updated"
	        redirect_to posts_path
	    else
	      render template: "edit_post"
	  	end
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
      							   :visa_id,
      							   :vaccine_id,
      							   :comment_id,
      							   :image_id,
      							   :movie,
      							   :memo,
      							   :route,)
    end

    def ensure_correct_user
      @post = Post.find(params[:id])
      if current_user != @post.user
        redirect_to posts_path
      end
    end

end
