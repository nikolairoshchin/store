class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:success] = "Item successfully added"
			redirect_to @product
		else
			render 'new'
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			flash[:success] = "Item updated"
			redirect_to @product
		else
			render 'edit'
		end
	end

	private

		def product_params
			params.require(:product).permit(:sku, :part_number, :name, :unit, :price)
		end

end
