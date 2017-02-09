class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
  end
end

# apartments.each do |apartment|
#   new_apartment = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
#   ruby_apartments << new_apartment
# end
#
# puts ruby_apartments
