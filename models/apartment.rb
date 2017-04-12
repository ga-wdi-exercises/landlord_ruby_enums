class Apartment
  @@total_properties = 0
  attr_accessor :id, :address, :monthly_rent, :square_feet
    def initialize(id, address, rent, square_feet)
      @id = id
      @address = address
      @monthly_rent = rent
      @square_feet = square_feet
      @@total_properties += 1
    end
  end
