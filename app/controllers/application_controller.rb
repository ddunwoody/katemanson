require 'digest/sha1'

class ApplicationController < ActionController::Base
  include SslRequirement
  before_filter :set_nav_context
  protect_from_forgery
  filter_parameter_logging :password

  helper_method :admin?

  protected

  def authorize
    unless admin?
      logger.warn "Unauthorized #{request.method.to_s.upcase} on #{request.path} from #{request.remote_ip}"
      redirect_to home_path
    end
  end

  def admin?
    Digest::SHA2.hexdigest(session[:password]) == YAML.load_file("#{RAILS_ROOT}/config/admin.yml")['password'] unless session[:password].nil?
  end

  def set_nav_context
    # TODO: figure out how to sort action_methods appropriately
    @menu = ['home', 'gallery', 'contact', 'blog']
  end
end
