class Tenant

    @@tenantArr = []

  def initialize(id,name,age,apartment_id)
    newPerson = { :id => id, :name => name, :age => age, :apartment_id => apartment_id }
    @@tenantArr.push(newPerson)
  end

  def self.getTenants
    @@tenantArr
  end
end
