class ProgramsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @random_fishtagram1 = Fishtagram.order("RANDOM()").first
    @random_fishtagram2 = Fishtagram.order("RANDOM()").last
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
    # this is to retreive from the flip table
    # <% @programs_users.each do |programuser|%>
    # <li><%= programuser.name %></li><br>
    # to retrieve information from the controller
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programs }
    end
  end

  def show
    @program = Program.find(params[:id])
    @images = Image.where(program_id: params[:id])
  end

  def new
    @programs = Program.all
  end

  def edit
    @program = Program.find(params[:id])
  end

  def create
    @program = Programs_User.new(programs_user_params)
    @program.user = current_user

    if @program.save
    redirect_to programs_url
    else
      render 'new'
    end
  end

  def update
    @program = Program.find(params[:id])
    if @program.update(program_params)
    redirect_to @program
    else
      render 'edit'
    end
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to programs_path
  end

private
  def programs_user_params
    params.require(:program).permit(:user_id,:program_id)
  end

  def program_params
    params.require(:program).permit(:name, :cost, :contact_no, :duration)
  end
end