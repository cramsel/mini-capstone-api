class CartedProductsController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity]

    cart_item = CartedProduct.create(
      user_id: current_user.id,
      product_id: product.id,
      quantity: quantity,
      order_id: params[:order_id],
      status: params[:status],
    )
    # if order.save
    render json: cart_item
    # else
    #   render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    # end
  end
end
