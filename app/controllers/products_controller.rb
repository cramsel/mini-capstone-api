class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def create
    product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      quantity: params[:quantity],
    )
    render json: product
    #validators make an if statement go here
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id
    product.quantity = params[:quantity] || product.quantity
    #validators make the render an if statement "if product.save..."
    render json: product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
    render json: "Product Deleted"
  end
end
