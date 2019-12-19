class CommentsController < ApplicationController
  def create
    @posts = Post.find(params[:post_id])
    @comment = @posts.comments.build(comment_params)
    @comment.user_id = current_user.id
  	@user = @posts_user
  	@comments = @posts.comments
    @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render :index
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end
end
