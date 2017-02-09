class Apartment
  attr_accessor :id,:address,:monthly_rent,:square_feet
  @@collection = []
  def initialize(id,address,monthly_rent,square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@collection << self
  end
  def self.all
    @@collection
  end

  def remove_tenant(tenant)
    tenant.apartment_id = null
  end

  def add_tenant(tenant)
    tenant.apartment_id = @id
  end
end
