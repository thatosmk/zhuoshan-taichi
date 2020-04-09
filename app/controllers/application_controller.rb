class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_club
  before_action :set_admin

  def after_sign_in_path_for(resource)
    if current_user.admin?
      dashboard_path
    else
      users_dashboard_files_path
    end
  end

  protected
    def configure_permitted_parameters
      # added first and last names
      added_attrs = [:first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :admin]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

    def set_club
      @club = Club.first
    end

    def set_admin
      if current_user.try(:admin?)
        @admin = current_user
      else
        @admin = nil
      end
    end
end
