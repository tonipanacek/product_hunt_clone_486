class ProductsController < ApplicationController
  # before_action :set_product, only: [ :show, :update ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @products = Product.all
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
