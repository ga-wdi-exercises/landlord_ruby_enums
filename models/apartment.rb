class Apartment

    attr_accessor :id, :address, :monthly_rent, :square_feet
    @@all = []
    def initialize(id, address, monthly_rent, square_feet)
      @id = id
      @address = address
      @monthly_rent = monthly_rent
      @square_feet = square_feet
      @@all.push(self)
    end

    def self.show
      @@all.each do |apt|
        puts "#{apt.address}"
      end
    end



end
