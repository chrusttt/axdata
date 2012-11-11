class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied - you probably do not have permission to access this site"
    redirect_to root_url
  end

end
