class OrdersController < ApplicationController
  def index
    order_list = Order.where(user_id: current_user.id)
    render json: order_list
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

  def create
    product = Product.find_by(id: params[:product_id])
    order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:quantity] * product.price,
      tax: product.tax * params[:quantity],
      total: (product.tax * params[:quantity]) + (product.price * params[:quantity]),
    )

    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
