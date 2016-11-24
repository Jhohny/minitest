class ProductsController < ApplicationController
  before_action :authenticate_user!
  
  def index
  	#@brands = current_user.brands
  end

  def new
    #@brand = current_user.brands.build
  end

  def show
  	#@brand = Brand.find(params[:id])
  end

  def edit
  	#@brand = Brand.find(params[:id])
  end

  #User can create a brand, actual brand creation
  def create
  	#@brand = current_user.brands.build(brand_params)
  	#if @brand.valid?
  	#	@brand.save
  	#	redirect_to brands_url
  	#else
  	#   render :new
  	#end
  end

  def update
  	#@brand = Brand.find(params[:id])
  	#if @brand.update(brand_params) 
  	#	redirect_to brands_url
  	#else 
  	#	render :edit
  	#end
  end

  def destroy
  	#@brand = Brand.find(params[:id])
  	#@brand.destroy
  	#redirect_to brands_url
  end

  private

  def brand_params
    #params.require(:brand).permit(:name)
  end

end
