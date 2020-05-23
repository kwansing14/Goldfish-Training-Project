class FishtagramsController < ApplicationController
  def show
    @fishtagram = Fishtagram.find(params[:id])
    @comments = Comment.where(fishtagram_id: (params[:id]))
  end

  def edit
    @fishtagram = Fishtagram.find(params[:id])
  end

  def index
    @fishtagrams = Fishtagram.all
  end

  def update
    @fishtagram = Fishtagram.find(params[:id])
    @fishtagram.update(fishtagram_params)
    redirect_to @fishtagram
  end

  def destroy
    @fishtagram = Fishtagram.find(params[:id])
    @fishtagram.destroy

    redirect_to root_path
  end

  def new
  end

  def create
    @fishtagram = Fishtagram.new(fishtagram_params)
    @fishtagram.user = current_user
    @fishtagram.body = @fishtagram.body.gsub(/(?:\n\r?|\r\n?)/, '<br>')

    if @fishtagram.save
    redirect_to fishtagrams_path
    else
      render 'new'
    end
  end

  private
  def fishtagram_params
    params.require(:fishtagram).permit(:body, :title, :img_url)
  end
end