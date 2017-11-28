class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @products = Product.find(params[:id])
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.price = params[:product][:price]
    @product.discription = params[:product][:discription]

    if @product.save
      redirect_to products_url
      flash[:success] = "Product created successfully!"
    else
      flash.now[:alert] = "Could not create product!"
      render :new
    end
    # @product = Product.create({
    #   name: params[:product][:name],
    #   price: params[:product][:price],
    #   discription: params[:product][:discription],
    # })


    # p "======="

    # @product.name = params[:]
     # @product= Product.all
     # @product.save
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
