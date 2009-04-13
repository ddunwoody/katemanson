class SessionsController < ApplicationController
  layout 'admin'
  ssl_required :new, :create
  filter_parameter_logging :password

  def create
    session[:password] = params[:password]
    flash[:notice] = 'Successfully logged in'
    redirect_to home_path
  end

  def destroy
    reset_session
    flash[:notice] = 'Successfully logged out'
    redirect_to home_path
  end
end
