class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet

  @@instances = []
  def initialize (id, address, rent, sq_feet)
    @id = id
    @address = address
    @monthly_rent = rent
    @square_feet = sq_feet
    @@instances << self
  end

  def self.all
    @@instances.each{|x| puts x}
  end
end
