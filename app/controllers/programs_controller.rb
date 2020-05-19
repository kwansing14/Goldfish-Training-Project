class ProgramsController < ApplicationController
  def index
    @programs = Program.all
    # validated working. into views
    # <% @programs.each do |program|%>
    # <li><%= program.name %></li><br>
    # .name
    # .cost
    # .contact_no
    # .duration
    # for retrieval of info
    @programs_users = User.first.programs
    # <% @programs_users.each do |programuser|%>
    # <li><%= programuser.name %></li><br>
    # to retrieve information from the controller
  end

  def show
    @program = Program.find(params[:id])
  end

  def new
    @programs = Program.all
  end

  def edit
    @program = Program.find(params[:id])
  end

  def create
    @program = Program.new(program_params)
    @program.user = current_user

    if @program.save
    redirect_to @program
    else
      render 'new'
    end
  end

  def update
    @program = Program.find(params[:id])
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to programs_path
  end

private
  def program_params
    params.require(:program).permit(:duration, :cost, :contact_number,:name)
  end
end