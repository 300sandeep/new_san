class ApplicationController < ActionController::Base
 # before_action :authenticate_user!
  protect_from_forgery with: :null_session  #before_action :store_location
  before_action :configure_permitted_parameters, if: :devise_controller?
  def store_location
  	binding.pry
    return unless request.get?
    if (request.path != "/" &&
        request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation/new" &&
        request.path != "/users/sign_out" &&
        request.path != "/users/retrieve_password/new" &&
        !(request.path.include? "/admin") &&
        !request.xhr?)
      session[:previous_url] = request.fullpath
    end
  end
  
  protected
    def configure_permitted_parameters
      #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :email, :password, :password_confirmation])
    end
end
