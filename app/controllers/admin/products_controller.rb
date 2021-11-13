class Admin::ProductsController < ApplicationController

    layout 'admin_layout'
    
    before_action :set_product, only: [:show, :edit, :update, :delete]

  def index
      # @products = Product.all # Problema N+1
      @product = Product.includes(:category)
    end

    def new
      @product = Product.new
      set_categories # @categories = Category.all
    end
  
    def show
    end
  
    def edit
      set_categories
    end
  
    def create
      @product = Product.new(params_products)
      if @product.save
        redirect_to admin_products_path
      else
        set_categories #@categories = Category.all
        render :new
      end
    end
  
    def update
      if @product.update(params_products)
        redirect_to admin_products_path
      else
        set_categories #@categories = Category.all
        render :edit
      end
    end
  
    def destroy
      @product.destroy
      redirect_to admin_products_path
    end
  
    private

    def set_product
      @product = Product.find(params[:id])
    rescue
      flash[:set_product_error] = "Could not find the record #{params[:id]}"
      redirect_to admin_products_path
    end

    def params_products
      params.require(:product).permit(:name, :price, :description, :category_id)
    end

    def set_categories
      @categories = Category.all
    end
end