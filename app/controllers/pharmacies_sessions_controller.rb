class PharmaciesSessionsController < ApplicationController
  def new

  end

  def create
   user = User.find_by(username: params[:session][:username].downcase)
   if user && user.authenticate(params[:session][:password])
     flash[:success] = "You have successfully logged in"
     redirect_to root_path
   else
     render 'new'
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to root_path
  end
end