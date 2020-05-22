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

  def create
    @fishstagram = Fishstagram.new(fishtagram_params)
    @fishstagram.user = current_user

    if @fishstagram.save
      redirect_to @fishstagram
    else
      render 'new'
    end
  end

  def new
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

  private
  def fishtagram_params
    params.require(:fishstagram).permit(:title, :imgurl)
  end
end