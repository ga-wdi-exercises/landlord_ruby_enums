require_relative "../data.rb"

class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet, :occupants

  def initialize(hash, tenants)
    @id = hash[:id]
    @address = hash[:address]
    @monthly_rent = hash[:monthly_rent]
    @square_feet = hash[:square_feet]

    @occupants = tenants.select do |t|
        t[:apartment_id]==hash[:id]
    end

    # apartment id gets selected....use select on a list of tenants hash for apartment_id property
    # and all matches are returned as tenant name


    #bonus, add... on initialization, each apartment should create an array of tenants
  end

end
