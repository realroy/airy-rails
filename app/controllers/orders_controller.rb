class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    if current_customer
      active_invoice = current_customer.invoices.find_by(status: 'WAIT_FOR_CONFIRMED_PAYMENT')
      @order = active_invoice.orders.new(order_params)
    else
      email = "#{Time.now.strftime('%N')}@#{Time.now.strftime('%N')}.com"
      password = Time.now.strftime('%N')
      customer = Customer.create(email: email, password: password)
      sign_in(:customer, customer)
      active_invoice = current_customer.invoices.create(status: 'WAIT_FOR_CONFIRMED_PAYMENT', vat: 0.07)
      @order = active_invoice.orders.new(order_params)
    end
    if @order.save
      redirect_to root_url
    else
      render 'products/show'
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to invoice_orders_path
    else
      render 'edit'
    end
  end

  private
  def order_params
    params.require(:order).permit(:created_at, :product_quantity, :product_id)
  end
end