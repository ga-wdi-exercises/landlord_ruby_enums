class Tenant

  attr_accessor :id, :name, :age, :apartment_id
  @@all = []
  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all.push(self)
  end

  def self.show
    @@all.each do |ten|
      puts "#{ten.name}"
    end
  end

  def self.sortByApt
    @@all.sort_by!{ |apt| apt.apartment_id  }
    retArr = []
    @@all.each do |ten|
      retArr.push(ten)
    end
    return retArr

  end


end
