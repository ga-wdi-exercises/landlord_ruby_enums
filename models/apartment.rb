class Apartment
  attr_reader :id, :address, :monthly_rent, :square_feet, :tenants
  @@all = []

  def self.all
    return @@all
  end

  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @tenants = []
    @@all << self
  end

  def add_tenants(tenants)
    tenants.each do |t|
      p t
      @tenants << t
    end
    @tenants
  end


end
