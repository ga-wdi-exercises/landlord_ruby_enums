class Apartment

    @@aptArr = []

  def initialize(id,address,monthly_rent,square_feet)
    newApt = { :id => id, :address => address,:monthly_rent => monthly_rent,:square_feet => square_feet}
    @@aptArr.push(newApt)
  end

  def self.getApts
    @@aptArr
  end

end
