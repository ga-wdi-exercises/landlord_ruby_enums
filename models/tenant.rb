class Tenant
    attr_accessor :working
    attr_accessor :name
    def initialize(id, name, age, apartment_id)
        @id= id
        @name = name
        @age = age
        @apartment_id = apartment_id
    end

    def get_ten
        "Name: #{@name}--age: #{@age} aptID: (#{@apartment_id})"
    end
end
