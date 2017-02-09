# 201702081919L  EL MIERCOLES   JAY

              # ---------------------------------
  require_relative "data"
  apartments = data[:apartments]
  tenants = data[:tenants]
              # Print all the names for tenants
              # Print all the names for tenants
              puts ''
              tenants.each do |tenant|
                puts "tenant_name: #{tenant[:name]}}"  # THIS WORKS THANKS TO WILL
              end
