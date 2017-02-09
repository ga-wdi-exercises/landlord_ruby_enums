class Tenant
  attr_accessor
  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

  #get and set ID
  def get_id
    @id
  end
  def set_id(new_id)
    @id = new_id
  end

  #get and set tenant name
  def get_name
    @name
  end
  def set_name(new_name)
    @aname = new_name
  end

  #get and set tenant age
  def get_age
    @age
  end
  def set_aget(new_age)
    @age = new_age
  end

  #get and set apartment id
  def get_apartment_id
    @apartment_id
  end
  def set_apartment_id(new_apartment_id)
    @apartment_id = new_apartment_id
  end


end
