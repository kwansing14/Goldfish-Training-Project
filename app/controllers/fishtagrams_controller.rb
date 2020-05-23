class FishtagramsController < ApplicationController
  def show
<<<<<<< HEAD
    @fishtagram = Fishtagram.find(params[:id])
=======
    @fishstagram = Fishtagram.find(params[:id])
>>>>>>> aa48543dd475e8987ff978f26f3b7e95b255eacb
    @comments = Comment.where(pin_id: (params[:id]))
  end

  def edit
    @fishtagram = Fishtagram.find(params[:id])
  end

  def index
    @fishtagrams = Fishtagram.all
  end

  def update
<<<<<<< HEAD
    @fishtagram = Fishtagram.find(params[:id])
    @fishtagram.update(pin_params)
    redirect_to @fishtagram
  end

  def destroy
    @fishtagram = Fishtagram.find(params[:id])
    @fishtagram.destroy
=======
    @fishstagram = Fishtagram.find(params[:id])
    @fishstagram.update(pin_params)
    redirect_to @fishstagram
  end

  def destroy
    @fishstagram = Fishtagram.find(params[:id])
    @fishstagram.destroy
>>>>>>> aa48543dd475e8987ff978f26f3b7e95b255eacb

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