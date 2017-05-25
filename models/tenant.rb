require "pry"
require_relative "data"
require_relative "models/apartment"

class Tenant
  attr_accessor :id :name :age :apartment_id
  def initialize id,name,age,apartment_id
    @id=id
    @name=name
    @age=age
    @apartment_id=apartment_id


  end

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []



end
binding "pry"
