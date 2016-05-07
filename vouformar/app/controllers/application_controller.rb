class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :application

  def application
  	@notifications = Progress.all
  	@notifications_size = Progress.count

    if current_user
      user = User.find(current_user)
      @user_name = user.name
    end
  end

private

  def has_logged?
    redirect_to '/users' if current_user
  end
  helper_method :has_logged?

  def need_be_logged
    redirect_to '/' unless current_user
  end
  helper_method :need_be_logged

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
