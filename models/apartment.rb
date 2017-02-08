class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  @@ruby_apartments = []
  def initialize(address, monthly_rent, square_feet)
    @id = @@ruby_apartments.length +1
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@ruby_apartments << self
  end
end
index=0
apartments.each do |apartment|
  apartment = Apartment.new(apartments[index][:address], apartments[index][:monthly_rent], apartments[index][:square_feet])
end
