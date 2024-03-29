class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit::Authorization

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username, email])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username])
  end
end
