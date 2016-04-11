class Apartment
  attr_reader (:id, :address, :rent, :square_feet)
  def initialize(id, address, rent, square_feet)
    @id = id
    @address = address
    @rent = rent
    @square_feet = square_feet
  end
  def Apartment.new
    "#{@id} #{@address} #{@rent} #{@square_feet}"


end
