class Apartment

  attr_reader :id, :address, :monthly_rent, :square_feet

  def initialize(id, address, rent, size)
    @id = id
    @address = address
    @rent = rent
    @size = size
  end

end
