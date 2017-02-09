class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
      before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    ## To permit attributes while registration i.e. sign up (app/views/devise/registrations/new.html.erb)
    devise_parameter_sanitizer.permit(:sign_up) {|p| p.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
    end
end
