class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.model_id = params[:model_id]
    @product.photo_url = params[:photo_url]
    @product.description = params[:description]
    @product.category_id = params[:category_id]

    if @product.save
            redirect_to products_url
          else
      render 'new'
    end
  end

  def edit
    @product = Product.find_by_id(params[:id])
  end

  def update
    @product = Product.find_by_id(params[:id])
    @product.model_id = params[:model_id]
    @product.photo_url = params[:photo_url]
    @product.description = params[:description]
    @product.category_id = params[:category_id]

    if @product.save
            redirect_to products_url
          else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find_by_id(params[:id])
    @product.destroy
        redirect_to products_url
      end
end
