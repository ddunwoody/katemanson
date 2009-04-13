require 'digest/sha1'

class ApplicationController < ActionController::Base
  include SslRequirement
  protect_from_forgery
  helper_method :admin?

  protected

  def admin?
    Digest::SHA2.hexdigest(session[:password]) == YAML.load_file("#{RAILS_ROOT}/config/admin.yml")['password'] unless session[:password].nil?
  end
end
