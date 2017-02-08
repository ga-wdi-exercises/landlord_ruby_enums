class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  @@ruby_tenants = []
  def initialize(name, age, apartment_id)
    @id = @@ruby_tenants.length +1
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@ruby_tenants << self
  end
end
index=0
tenants.each do |tenants|
  tenants = Tenant.new(tenants[index][:address], tenants[index][:monthly_rent], tenants[index][:square_feet])
end
