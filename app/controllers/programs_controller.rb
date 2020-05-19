class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @program = Program.new(program_params)
    @program.save
    redirect_to @program
  end

  def update
  end

  def destroy
  end

private
  def program_params
    params.require(:program).permit(:duration, :cost, :contact_number)
  end
end