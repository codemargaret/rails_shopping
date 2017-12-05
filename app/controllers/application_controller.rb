class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def current_order

    if session[:order_id]
      Order.find(session[:order_id])
    else
      if current_user
        Order.new(:account_id => current_user.account.id)
      else
        Order.new
      end
    end
  end

  # protected
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
  #   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  # end
end
