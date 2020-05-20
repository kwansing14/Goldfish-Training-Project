class ImagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @programs = Program.all
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to @image
  end

  def destroy
  end

  private

  def image_params
    params.require(:image).permit(:program_id, :image_url)
  end
end