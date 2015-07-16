class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def user_admin
      if current_user
        if current_user.admin === true
          @user_admin = current_user
        end
      end
    end

    helper_method :user_admin

    #add admin privelage

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :username, :email, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :name, :username, :password, :current_password) }
  end

  #changes default route of devise to specific route after login

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || user_path(current_user)
  end

  def after_update_path_for(user)
    user_path(user)
  end


end
