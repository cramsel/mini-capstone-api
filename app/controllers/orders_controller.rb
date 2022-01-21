class OrdersController < ApplicationController
  def index
    render json: Order.all
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

  def create
    order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )

    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
