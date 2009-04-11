class SessionsController < ApplicationController
  layout 'admin'
  ssl_required :new, :create
  filter_parameter_logging :password

  def create
    session[:password] = params[:password]
    redirect_to cartoons_path
  end

  def destroy
    reset_session
    redirect_to home_path
  end
end
