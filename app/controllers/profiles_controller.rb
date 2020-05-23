class ProfilesController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]
  def index

  end

  def show
    @fishtagram = Fishtagram.where(user_id: params[:user_id])
    @fish = Goldfish.where(user_id: params[:user_id])
    @follow = Follow.where(user_id: params[:user_id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end