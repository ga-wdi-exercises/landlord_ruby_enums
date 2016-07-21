require "pry"

require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
@ruby_apartments = []
@ruby_tenants = []

apartments.each do |apt_in|
  @ruby_apartments.push(Apartment.new(apt_in[:address], apt_in[:monthly_rent], apt_in[:square_feet]))
end

tenants.each do |tenant_in|
  @ruby_tenants.push(Tenant.new(tenant_in[:name], tenant_in[:age], tenant_in[:apartment_id]))
end

def print_addresses
  @ruby_apartments.each do |apartment|
    puts apartment.get_address
    puts string
  end
  return nil
end

def print_names
  @ruby_tenants.each do |tenant|
    puts tenant.get_name
  end
  return nil
end

def less_than_700
  @ruby_apartments.each do |apartment|
    if apartment.get_rent < 700
      puts "#{apartment.get_address}, $#{apartment.get_rent}"
    end
  end
  return nil
end

def tenants_over_44
  @ruby_tenants.each do |tenant|
    if tenant.get_age > 44
      puts tenant.get_name
    end
  end
  return nil
end

def tenants_id_1
  @ruby_tenants.each do |tenant|
    if tenant.get_apartment_id == 1
      puts tenant.get_name
    end
  end
  return nil
end

binding.pry
