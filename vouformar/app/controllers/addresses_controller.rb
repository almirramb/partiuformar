class AddressesController < ApplicationController

	def create
		@address = Address.new(address_params)

		@address.save
	end

	def edit
		@address.update(address_params)
	end

	def destroy
		@address.destroy
	end

private
	def address_params
		params.require(:address).permit(:cep, :public_place, :uf, :city)
	end
end
