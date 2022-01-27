class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    #order_list = Order.where(user_id: current_user.id)
    order_list = current_user.orders
    render json: order_list, include: "carted_products.product"
  end

  def show
    #order = Order.find_by(id: params[:id])
    order = current_user.orders.find_by(id: params[:id])
    render json: order, include: "carted_products.product"
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
      calculated_tax += carted_product.quantity * carted_product.product.tax
    end
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if order.save
      carted_products.each do |carted_product|
        carted_product.order_id = :order_id
        carted_product.status = "purchased"
        carted_product.save
      end
      render json: order, include: "carted_products.product"
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
