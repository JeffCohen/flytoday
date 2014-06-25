class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  helper_method :logged_in?

  def logged_in?
    session[:user_id].present?
  end

  def require_login
    if session[:user_id].nil?
      redirect_to root_url, notice: "Please login first"
    end
  end

end
