class Apartment
	attr_accessor :id, :address, :monthly_rent, :square_feet

	def initialize(initial_id, initial_address, initial_monthly_rent, initial_square_feet)
		@id = initial_id
		@address = initial_address
		@monthly_rent = initial_monthly_rent
		@square_feet = initial_square_feet
	end
end
