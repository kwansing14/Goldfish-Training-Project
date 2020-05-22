class FishtagramsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @bubble = Bubble.new(fishtagram_params)
    @bubble.user = current_user

    if @bubble.save
    redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def fishtagram_params
    params.require(:fishtagram).permit(:body, :title, :img_url)
  end
end