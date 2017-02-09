require_relative "data"
apartments = data[:apartments]

class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
  end
end

{:id=>1, :address=>"9841 Tanner Key", :monthly_rent=>606, :square_feet=>779},
