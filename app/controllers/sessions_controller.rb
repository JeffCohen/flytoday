class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to root_url, notice: "See you later!"
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome Back!"
    else
      render 'new'
    end
  end

end
