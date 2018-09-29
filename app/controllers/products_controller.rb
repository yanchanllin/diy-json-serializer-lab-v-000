class ProductsController < ApplicationController
  before_action :set_params, only: [:data, :inventory, :description, :show]

  def index
    @products = Product.all
  end

  def data
    render json: ProductSerializer.serialize(@product)
  end

  def inventory
    render plain: @product.inventory > 0 ? true : false
  end

  def description
    render plain: @product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
  end

  private

  def set_params
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end