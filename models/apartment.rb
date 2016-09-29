require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

class Apartment
  attr_accessor :address :monthly_rent :square_feet
  def initialize address, monthly_rent, square_feet
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square feet
  end
  def address
    @address.all
  end
  def rent_less_than
    @monthly_rent < 701
  end
end
