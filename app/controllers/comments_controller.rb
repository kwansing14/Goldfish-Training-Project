class CommentsController < ApplicationController
  def show
    @fishtagram = Fishtagram.find(params[:fishtagram_id])
  end

  def index
  end

  def new
    @fishtagram = Fishtagram.find(params[:fishtagram_id])
  end

  def create
    @fishtagram = Fishtagram.find(params[:fishtagram_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.fishtagram_id = @fishtagram.id
    byebug
    if @comment.save
      redirect_to fishtagram_path(@fishtagram)
    else
      byebug
      render 'new'
    end
  end

  def edit
    @comment = Comment.find(params[:fishtagram_id])
  end

  def update
    @fishtagram = Fishtagram.find(params[:id])
    @comment = Comment.find(params[:fishtagram_id])
    @comment.update(comment_params)

    redirect_to @fishtagram
  end

  def destroy
    @comment = Comment.find(params[:fishtagram_id])
    @comment.destroy
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end