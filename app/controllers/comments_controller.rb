class CommentsController < ApplicationController
  def show
    @fishtagram = Fishtagram.find(params[:fishtagram_id])
  end

  def index
  end

  def new
    @fishtagram = Fishtagram.find(params[:fishtagram_id])
    @comments = Comment.where(fishtagram_id: (params[:fishtagram_id]))
  end

  def create
    @fishtagram = Fishtagram.find(params[:fishtagram_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.fishtagram_id = @fishtagram.id
    if @comment.save
      redirect_to fishtagram_path(@fishtagram)
    else
      render 'new'
    end
  end

  def edit
    @fishtagram = Fishtagram.find(params[:id])
    @comments = Comment.where(fishtagram_id: (params[:id]))
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
    redirect_to fishtagram_path(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end