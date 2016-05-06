class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  before_action :has_logged?, :only => [:new, :create]
  before_action :need_be_logged, :only => [:destroy]

	def create
    user = User.find_by_registration(params[:registration])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
    end

    redirect_to '/users'
  end

  def new
    @user = User.new
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

private

  def login_params
      params.require(:user).permit(:registration, :password, :password_confirmation, :email)
  end
end
















