class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication
  
  def check_permissions
    authorize! :create, resource
  end

    def new
    resource = build_resource({})
  
    respond_with resource

  end

  # POST /resource
  def create
    build_resource

    if resource.save
      respond_with resource
    else
      set_flash_messages :notice, "Try again"
      clean_up_passwords resource
      respond_with resource
    end
  end
end