class GossipsController < ApplicationController
  # Show all the gossip in the index.html
  def index
    @gossips = Gossip.all
  end

  # Show only the selected gossip from the :id
  def show
    @gossips = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: rand(1..10))

    if @gossip.save
      puts 'IT WWWORRRKKKKSSS'
      redirect_to gossips_path
    else
      puts 'NOOOOOOOOOOOOOOO'
      render new_gossip_path
    end
  end

  def edit; end

  def update; end

  def destroy; end

end
