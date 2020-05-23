class FishtagramsController < ApplicationController
  def show
    @fishstagram = Fishstagram.find(params[:id])
    @comments = Comment.where(pin_id: (params[:id]))
  end

  def edit
    @fishstagram = Fishstagram.find(params[:id])
  end

  def index
    @fishtagrams = Fishstagram.all
  end

  def update
    @fishstagram = Fishstagram.find(params[:id])
    @fishstagram.update(pin_params)
    redirect_to @fishstagram
  end

  def destroy
    @fishstagram = Fishstagram.find(params[:id])
    @fishstagram.destroy

    redirect_to root_path
  end

  def new
  end

  def create
    @fishtagram = Fishtagram.new(fishtagram_params)
    @fishtagram.user = current_user
    @fishtagram.body = @fishtagram.body.gsub(/(?:\n\r?|\r\n?)/, '<br>')

    if @fishtagram.save
    redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def fishtagram_params
    params.require(:fishtagram).permit(:body, :title, :img_url)
  end
end