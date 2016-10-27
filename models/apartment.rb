require "pry"

class Apartment
  attr_accessor :id, :name, :age, :apartment_id
  @@ruby_apartments = []

    def initialize(id, name, age, apartment_id)
      @id = id
      @name = name
      @age = age
      @apartment_id = apartment_id
      @@ruby_apartments.push(self)
    end




end
binding.pry
