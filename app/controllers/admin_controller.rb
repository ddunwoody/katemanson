require 'digest/sha1'

class AdminController < ApplicationController
  before_filter :authorize
  helper_method :admin?

  protected

  def authorize
    unless admin?
      logger.warn "Unauthorized #{request.method.to_s.upcase} on #{request.path} from #{request.remote_ip}"
      sleep 5
      redirect_to login_path
    end
  end

  def admin?
    Digest::SHA2.hexdigest(session[:password]) == YAML.load_file("#{RAILS_ROOT}/config/admin.yml")['password'] unless session[:password].nil?
  end
end
