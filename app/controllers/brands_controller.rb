class BrandsController < ApplicationController

  def index
  	@brands = Brand.all
  end

  def new
  	@brand = Brand.new
  end

  def show
  	@brand = Brand.find(params[:id])
  end

  def edit
  	@brand = Brand.find(params[:id])
  end

  def create
  	@brand = Brand.new(brand_params)
  	if @brand.valid?
  		@brand.save
  		redirect_to brands_url
  	else
  	   render :new
  	end
  end

  def update
  	@brand = Brand.find(params[:id])
  	if @brand.update(brand_params) 
  		redirect_to brands_url
  	else 
  		render :edit
  	end
  end

  def destroy
  	@brand = Brand.find(params[:id])
  	@brand.destroy
  	redirect_to brands_url
  end

  private

  def brand_params
    params.require(:brand).permit(:name)
  end

end