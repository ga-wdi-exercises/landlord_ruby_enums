require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

class Tenant
  attr_accessor :name, :age, :apartment_id
  def initialize
    @name = name
    @age = age
    @apartment_id = apartment id
    @@all << self
  end
  def name
    "Tenant Name is #{@name}"
  end
  def age
    @age > 44
  end
  def self.all
    @@all
  end
  def apartment_id
    @apartment_id == 1
  end
end
