class ProductsController < ApplicationController
  include Cart
  layout 'admin'

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @cart = get_cart_from(current_customer)
    # if current_customer
    #   active_invoice = current_customer.invoices.find_by(status: 'WAIT_FOR_CONFIRMED_PAYMENT')
    #   @cart = []
    #   active_invoice.orders.each do |o|
    #     @cart.append({ product: Product.find(o.product_id), quantity: o.product_quantity })
    #   end
    # else
    #   @cart = nil
    # end
    render layout: 'application'
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :in_stock, :img_url, :brand)
  end
end
