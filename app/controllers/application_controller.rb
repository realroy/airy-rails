require 'time'

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery prepend: true, with: :exception

  layout 'application'
  include Cart

  def index
    @products = Product.all
    @cart = get_cart_from(current_customer)
    render '/main/catalogue'
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password])
  end

end
