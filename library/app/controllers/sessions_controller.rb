 def create
    user = User.find_by_email(params[:session][:user_id])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in."
      redirect_to '/'
    else
      flash[:error] = "Invalid username/password."
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "Logged out"
  end