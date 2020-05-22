class CommentsController < ApplicationController
  def new
    @bubble_id = params[:fishtagram_id]
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.body = @comment.body.gsub(/(?:\n\r?|\r\n?)/, '<br>')

    if @comment.save
      redirect_to root_path
    else
      redirect_to root_path
    end

  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :bubble_id)
  end
end