# Apartment class
class Apartment

	attr_accessor :apartment
	@@all = []

	def initialize apartment
		@apartment = apartment
		@@all << apartment
	end

	def self.all
		@@all
	end

end
