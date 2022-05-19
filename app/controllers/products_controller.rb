class ProductsController < ApplicationController

	def index
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
			redirect_to products_path
		else
			render 'new'
		end
	end

	private

		def product_params
			params.require(:product).permit(:sku, :part_number, :name, :unit, :price)
		end

end
