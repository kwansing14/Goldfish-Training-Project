class CommentsController < ApplicationController
  def show
    @fishtagram = Fishtagram.find(params[:pin_id])
  end

  def index
  end

  def new
    @fishtagram = Fishtagram.find(params[:pin_id])
  end

  def create
    @fishtagram = Fishtagram.find(params[:pin_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.Fishtagram = @fishtagram

    if @comment.save
      redirect_to pin_path(@fishtagram)
    else
      byebug
      render 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:pin_id])
  end

  def update
    @fishtagram = Fishtagram.find(params[:id])
    @comment = Comment.find(params[:pin_id])
    @comment.update(comment_params)

    redirect_to @fishtagram
  end

  def destroy
    @comment = Comment.find(params[:pin_id])
    @comment.destroy
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
>>>>>>> 762e8a7a25dcf1b52a413875e77deeb633655aa8
  end
end