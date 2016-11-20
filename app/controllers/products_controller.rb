class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def edit
		@product = Product.find_by(id: params[:id])
	end

	def create
		 @product = Product.new(title: params[:title], price: params[:price], description: params[:description])
    @product.save
	end

	def destroy
		product = Product.find_by(id: params[:id])
		product.delete
	end

	def new
	end

	def update
		product = Product.find_by(id: params[:id])
		product.assign_attributes(title: params[:title], price: params[:price], description: params[:description])
			product.save
	end

	def show
		@product = Product.find_by(id: params[:id])
	end


end
