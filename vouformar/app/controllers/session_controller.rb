class SessionController < ApplicationController
	def create
    if user = User.authenticate(login_params)
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    end
  end

  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end

private
  def login_params
      params.require(:login).permit(:registration, :password, :password_confirmation)
  end
end
