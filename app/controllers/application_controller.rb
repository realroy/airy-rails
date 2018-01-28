class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @products = Product.all
    render '/main/catalogue'
  end

end
