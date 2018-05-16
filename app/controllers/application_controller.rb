class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up ){|u| u.permit(:name ,:password ,:password_confirmation, :email, :gender,  :birthday,:photo)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name , :email, :password, :gender, :birthday, :photo, :password_confirmation, :current_password) }
    devise_parameter_sanitizer.permit(:sign_in ){|u| u.permit(:email,:password)}
  end


end

