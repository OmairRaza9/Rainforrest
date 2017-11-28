class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @products = Product.find(params[:id])
  end

  def new
    render :new
  end

  def create
    render :create
  end

  def edit
    render :edit
  end

  def update
    render :update
  end

  def destroy
    render :destroy
  end
end
