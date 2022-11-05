class UsersController < ApplicationController
  def index; end

  def show
    @user_db = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      description: params[:description],
      email: params[:email],
      age: params[:age],
      password: params[:password],
      password_confirmation: params[:confirm_password],
      city_id: rand(1..10)
    )

  if @user.save
    puts 'it workkksss'
    redirect_to root_path
  else
    puts 'noooooo'
    render new_user_path
  end
  end

  def edit; end

  def update; end

  def destroy; end
end
