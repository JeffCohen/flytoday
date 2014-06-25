class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      redirect_to root_url, notice: "Welcome Back!"
    else
      render 'new'
    end
  end

end
