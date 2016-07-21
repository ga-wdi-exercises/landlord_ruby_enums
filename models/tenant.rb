require './models/apartment'
apartments = data[:apartments]
class Tenant
    attr_accessor :working
    attr_accessor :name
    def initialize(id, name, age, apartment_id)
        @id= id
        @name = name
        @age = age
        @apartment_id = apartment_id
    end

    def get_apt_id
        @apartment_id
    end

    def get_ten
        "Name: #{@name}--age: #{@age} aptID: (#{@apartment_id})"
    end

    def get_ten_apt(ruby_apartments)
        match = ruby_apartments.select{|object| object.get_id == @apartment_id}
        return "Name: #{@name} " + match[0].get_address
    end
end
