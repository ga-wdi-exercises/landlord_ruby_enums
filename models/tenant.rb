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


end
