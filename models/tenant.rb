   class Tenant
   attr_accessor :id, :name, :age, :apartment_id
   # On Initializtion create the new APT instances with these attributes
   def initialize id, name, age, apartment_id
     @id = id
     @name = name
     @age = age
     @apartment_id = apartment_id
   end
 end
