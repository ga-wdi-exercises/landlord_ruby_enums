class User
	attr_accessor(:first_name, :last_name)

  def initialize(fname, lname)
    @first_name = fname
    @last_name = lname
  end

  def full_name
    return @first_name.capitalize + " " + @last_name.capitalize
  end

  def firstname
	return @first_name.capitalize
  end

  def set_first_name(new_name)
  	@first_name = new_name
  end
end

me = User.new("Adam", "Bray")
puts me.full_name
puts me.firstname
puts me.set_first_name("George")
