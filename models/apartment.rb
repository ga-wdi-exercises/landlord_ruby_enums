class Apartment
  attr_reader :id, :address, :monthly_rent, :square_feet, :tenants
  @@all = []

  def self.all
    return @@all
  end

  def self.add_all_tenants(tenants)
    @@all.each do |apt| #for each apartment...
      specific_tenants = tenants.select do |t|
        t.apartment_id == apt.id
      end
      apt.add_tenants(specific_tenants)
    end
  end

  def self.get_apt_by_id(id)
    return @@all.find do |apt|
      apt.id == id
    end
  end

  def self.summarize_all
    @@all.each do |apt|
      apt.summary
    end
  end


  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @tenants = []
    @@all << self
  end

  def add_tenant (tenant)
    @tenants << t
  end

  def add_tenants(tenants)
    tenants.each do |t|
      @tenants << t
    end
    @tenants
  end

  def summary
    puts "  Apartment ##{@id}: #{@address}
    Rent: $#{@monthly_rent}; Size: #{@square_feet}sqft
    Tenants: #{@tenants.length}"
  end
end
