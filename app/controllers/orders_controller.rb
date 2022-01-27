class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    #order_list = Order.where(user_id: current_user.id)
    order_list = current_user.orders
    render json: order_list
  end

  def show
    #order = Order.find_by(id: params[:id])
    order = current_user.orders.find_by(id: params[:id])
    render json: order
  end

  def create
    order = Order.create(
      user_id: params[:user_id],

    )
    # product = Product.find_by(id: params[:product_id])
    # quantity = params[:quantity]
    # subtotal = product.price * quantity
    # tax = product.tax * quantity

    # order = Order.create(
    #   user_id: current_user.id,
    #   product_id: params[:product_id],
    #   quantity: quantity,
    #   subtotal: subtotal,
    #   tax: product.tax * quantity,
    #   total: tax + subtotal,
    # )

    # if order.save
    #   render json: order
    # else
    #   render json: { errors: order.errors.full_messages }, status: :unprocessable_entity

  end
end
