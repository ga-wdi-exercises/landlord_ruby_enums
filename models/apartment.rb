class Apartment
    attr_accessor :id
    attr_accessor :address
    attr_accessor :monthly_rent
    attr_accessor :square_feet

    def initialize(id, address, monthly_rent, square_feet)
        @id = id
        @address = address
        @monthly_rent = monthly_rent
        @square_feet = square_feet
    end

    def get_id
        @id
    end

    def get_address
        @address
    end

    def get_apt
        "Apt: #{@address}--rent:$#{@monthly_rent} sqft: (#{@square_feet})"
    end
end
