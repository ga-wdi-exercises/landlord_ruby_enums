require "pry"
require_relative "data"
require_relative "models/tenant"

class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feetss
  def initialize id,address,monthly_rent,square_feet
    @id=id
    @address=address
    @monthly_rent=monthly_rent
    @square_feet=square_feet

  end

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []




end

binding "pry"
