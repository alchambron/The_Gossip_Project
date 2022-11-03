class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]

  # Show all the gossip in the index.html
  def index
    @gossip = Gossip.all
  end

  # Show only the selected gossip from the :id
  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(
      title: params[:title],
      content: params[:content],
      user_id: session[:user_id])

    if @gossip.save
      puts 'IT WWWORRRKKKKSSS'
      redirect_to gossips_path
    else
      puts 'NOOOOOOOOOOOOOOO'
      render new_gossip_path
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    gossip_user = @gossip.user

    if @gossip.update(post_params)
      redirect_to gossip_path
    else
      render :action => "edit"
      
    end

  end

  def destroy
    @gossip = Gossip.find(params[:id]) 
    @gossip.destroy
    redirect_to gossips_path
  end

  private

  def post_params
    params.require(:gossip).permit(:title, :content)
  end

  def authenticate_user
    unless session[:user_id]
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
