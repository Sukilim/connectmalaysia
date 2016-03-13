class UserSessionsController < ApplicationController
 
  def new

  end

  def create
      redirect_back_or_to(user_dashboard_path, notice: 'Login successful')
  end

  def destroy
    logout
    redirect_to(login_path, notice: 'Logged out!')
  end

  private
  
end
