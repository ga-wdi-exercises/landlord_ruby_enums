
class Tenant
  attr_accessor :id, :name, :age, :apt_id

  def initialize(id, name, age, apt_id)
    @id = id
    @name = name
    @age = age
    @apt_id = apt_id
  end


end # end class tenant
