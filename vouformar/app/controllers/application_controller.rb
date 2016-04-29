class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :application


def application
	@notifications = Progress.all
	@notifications_size = Progress.count
end



end
