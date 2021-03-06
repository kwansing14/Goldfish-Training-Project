class ImagesController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @images = Image.where(program_id: params[:program_id])
  end

  def new
    @programs = Program.all
  end

  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to images_path
  end

  def destroy
  end

  private

  def image_params
    params.require(:image).permit(:program_id, :image_url)
  end
end