class ApplicationController < ActionController::Base
  before_action :require_login
  include Banken
  protect_from_forgery with: :exception

  private
	def not_authenticated
  	redirect_to login_path, alert: "Please login first"
	end
end
