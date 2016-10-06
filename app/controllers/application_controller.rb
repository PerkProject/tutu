class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(current_user)
    current_user.admin? ? admin_welcome_index_path : new_search_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(first_name last_name))
  end
end
