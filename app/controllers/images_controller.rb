class ImagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @programs = Program.all
  end

  def create
  end

  def destroy
  end
end