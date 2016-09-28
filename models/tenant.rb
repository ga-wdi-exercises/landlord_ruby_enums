class Tenant
  @@all = []
  attr_accessor :id, :name, :age, :apartment_id

  def self.all
    return @@all
  end

  def self.locate(tenant_name)
    tenant = @@all.find do |t|
      t.name == tenant_name
    end
    # is it a good idea to reference another class's methods? I could probably have done this within the Apartment object. Thoughts?
    return Apartment.get_apt_by_id(tenant.apartment_id).address
  end

  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all << self
  end

end
