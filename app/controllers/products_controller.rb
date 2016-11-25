class ProductsController < ApplicationController
  before_action :authenticate_user!
  
  def index
  	@products = current_user.products
    @total_value = @products.sum(:price)
  end

  def new
    if current_user.brands.exists?
      @product = current_user.products.build
      @user_brands = current_user.brands
    else
      flash[:alert] = "Please create at least a Brand first."
      redirect_to brands_path 
    end
  end

  def show
  end

  def edit
  	@product = current_user.products.find(params[:id])
    @current_brand = @product.brand
    @user_brands = current_user.brands
  end

  def create
  	@product = current_user.products.build(product_params)
  	if @product.valid?
  		@product.save
  		redirect_to products_url
  	else
  	   render :new
  	end
  end

  def update
    @user_brands = current_user.brands
    @product = current_user.products.find(params[:id])
      if @product.update(product_params) 
        redirect_to products_url
      else
        render :edit
    end
  end

  def destroy
  	@product = current_user.products.find(params[:id])
  	@product.destroy
  	redirect_to products_url
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand_id, :description, :price)
  end

end
