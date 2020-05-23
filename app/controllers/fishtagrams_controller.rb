class FishtagramsController < ApplicationController
  def show
    @fishstagram = Fishtagram.find(params[:id])
    @comments = Comment.where(pin_id: (params[:id]))
  end

  def edit
    @fishstagram = Fishtagram.find(params[:id])
  end

  def index
    @fishtagrams = Fishtagram.all
  end

  def update
    @fishstagram = Fishtagram.find(params[:id])
    @fishstagram.update(pin_params)
    redirect_to @fishstagram
  end

  def destroy
    @fishstagram = Fishtagram.find(params[:id])
    @fishstagram.destroy

    redirect_to root_path
  end

  private
  def fishtagram_params
    params.require(:fishstagram).permit(:title, :imgurl)
  end
end