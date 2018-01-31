module Cart
  include ActiveSupport::Concern

  def get_cart_from(customer)
    if customer
      active_invoice = customer.invoices.find_by(status: 'WAIT_FOR_CONFIRMED_PAYMENT')
      cart = []
      active_invoice.orders.each do |o|
        cart.push({product: Product.find(o.product_id), quantity: o.product_quantity})
      end
      cart
    else
      nil
    end
  end
end