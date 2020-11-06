class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :city, :username, :photo])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :city, :username, :photo, :form] )
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def after_sign_up_path_for(resource)
    questionnaire_path
  end

  # def authenticate_user!
  #   if user_signed_in?
  #     redirect_to dashboard_path
  #   # else
  #     redirect_to root_path
  #   end
  # end

end
