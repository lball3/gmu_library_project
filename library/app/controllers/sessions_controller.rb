 class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
  	user = User.find_by(user_id: params[:session][:user_id])
  	if user and user.authenticate(params[:session][:password])
  		session[:user_id] = user.id
  		flash[:success] = "You have successfully logged in."
  		redirect_to books_url
  	else
  		flash[:error] = "Invalid username/password."
  		redirect_to new_session_path
  	end
  end


  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "Logged out"
  end

end