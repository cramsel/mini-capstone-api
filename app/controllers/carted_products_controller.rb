class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    user_cart = current_user.carted_products.where(status: "carted").includes(:user, :product, :order)
    render json: user_cart
  end

  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity]

    cart_item = CartedProduct.create(
      user_id: current_user.id,
      product_id: product.id,
      quantity: quantity,
      order_id: nil,
      status: "carted",
    )
    if cart_item.save
      render json: cart_item
    else
      render json: { errors: cart_item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: "Item removed from cart"
  end
end
