class SessionsController < ApplicationController

  def new
    
  end

  def show
    session.delete(:user_id)
    redirect_to '/'
    
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      puts 'yes'
      session[:user_id] = @user.id
      redirect_to '/'
    else
      puts 'no'
    end
  end

  def destroy
    session.delete(:user_id)
  end
end
