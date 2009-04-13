require 'digest/sha1'

class AdminController < ApplicationController
  before_filter :authorize

  protected

  def authorize
    unless admin?
      logger.warn "Unauthorized #{request.method.to_s.upcase} on #{request.path} from #{request.remote_ip}"
      flash[:warning] = 'You are not logged in'
      sleep 5
      redirect_to login_path
    end
  end
end
