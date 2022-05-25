class WarehousesController < ApplicationController

	def index
		@warehouses = Warehouse.all
	end

	def show
		@warehouse = Warehouse.find(params[:id])
	end

	def new
		@warehouse = Warehouse.new
	end

	def create
		@warehouse = Warehouse.new(warehouse_params)
		if @warehouse.save
			flash[:success] = "Item successfully added"
			redirect_to @warehouse
		else
			render 'new'
		end
	end

	def edit
		@warehouse = Warehouse.find(params[:id])
	end

	def update
		@warehouse = Warehouse.find(params[:id])
		if @warehouse.update(warehouse_params)
			flash[:success] = "Item updated"
			redirect_to @warehouse
		else
			render 'edit'
		end
	end

	def destroy
		@warehouse = Warehouse.find(params[:id])
		@warehouse.destroy
			redirect_to warehouses_url, info: "Item deleted", status: :see_other
	end

	private

		def warehouse_params
			params.require(:warehouse).permit(:name, :address)
		end

end
