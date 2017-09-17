class DogsController < ApplicationController
	def new
	end

	def index
		@dog = Dog.new
	end

	def create
		@dog = Dog.create(dog_params)
		redirect_to root_path
	end


	private

	def dog_params
		params.require(:dog).permit(:name, :breed, :age)
	end
end
