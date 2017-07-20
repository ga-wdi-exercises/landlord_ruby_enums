require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []



# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:

  # Explain how the data is structured
    # The data is structured as an array of objects which contain
    # various properties of each apartment/tenant

  # What are the properties for each of the two types of hashes
    # apartment: id, address, monthly_rent, and square feet
    # tenant: id, name, age, apartment_id

# Use enumerables to -
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


# loop through the existing apartments and tenants
  # create a new instance of the corresponding class
  # push the instance into the corresponding ruby_array

apartments.each { |apt|
  ruby_apartments.push(Apartment.new(
    apt[:id],
    apt[:address],
    apt[:monthly_rent],
    apt[:square_feet]
  ))
}

tenants.each { |tenant|
  ruby_tenants.push(Tenant.new(
    tenant[:id],
    tenant[:name],
    tenant[:age],
    tenant[:apartment_id]
  ))
}

  def print_apartments apts
    apts.each { |apt| puts apt.to_s }
  end

  def print_tenants tenants
    tenants.each { |tenant| puts tenant.to_s }
  end

  # get_addresses returns an array of all the addresses
  # in apartments
  def get_addresses apts
    return apts.map { |apt| apt.address }
  end

  # get_apartments_with_tenants returns the
  # list of apts with an added key of tenants
  # tenants: "name1, name2, ...."
  def get_apartments_with_tenants apts, tenants
    return apts.map { |apt|
      names = get_tenant_names_in_apt tenants, apt.id
      names
    }
  end

  # returns the tenant names that are in apt_id as
  # and array
  def get_tenant_names_in_apt tenants, apt_id
    names = tenants.select { |tenant| tenant.apartment_id == apt_id }
    names.map! { |name| name.name }
  end

  # get_all_tenant_names returns a hash of all the tenant names
  # if apts is sent in this means the user wants the address
  # of the tenant also
  def get_tenant_names tenants, apts = nil
    data = tenants.map { |tenant|
      if apts != nil
        address = get_tenant_address tenant.apartment_id, apts
        [tenant.name, address]
      else
        tenant.name
      end
    }
    return data
  end

  # get_tenant_address returns the address of a tenant
  def get_tenant_address apt_id, apts
      apts.each { |apt|
        if apt.id == apt_id
          return apt.address
        end
      }
    end

  # get_apts_less_than returns the apartments that
  # are less than amount
  def get_apts_less_than apts, amount
    return apts.select { |apt| apt.monthly_rent < amount }
  end

  # get_over_age returns the tenants that are
  # over a certain age
  def get_over_age tenants, age
    return tenants.select { |tenant| tenant.age > age }
  end

  # returns the tenants that are in apt_id
  def get_tenants_in_apt tenants, apt_id
    return tenants.select { |tenant| tenant.apartment_id == apt_id }
  end

  # sorts a hash of tenants by age
  def sort_tenants_by_age tenants
    return tenants.sort_by { |tenant| tenant.age }
  end

  # sorts a hash of tenants by name
  def sort_tenants_by_name tenants
    return tenants.sort_by { |tenant| tenant.name }
  end

  # Print all the addresses for the apartments
  addresses = get_addresses ruby_apartments
  # puts addresses

  # Print all the names for tenants
  tenant_names = get_tenant_names ruby_tenants, ruby_apartments
  # puts tenant_names

  # Print only ruby_apartments that are less then 700 in rent
  less_than_700 = get_apts_less_than ruby_apartments, 700
  # puts less_than_700

  # Print only tenants that are over the age of 44
   over_44 = get_over_age ruby_tenants, 44
   # puts over_44

  # Print only tenants that have an apartment id of 1
    apt_1_tenants = get_tenants_in_apt ruby_tenants, 1
    # puts apt_1_tenants

  # Print all the tenants in order from youngest to oldest
    tenants_by_age = sort_tenants_by_age ruby_tenants
#    puts tenants_by_age

  # Print the names of all the tenants alphabetically
    tenants_by_name = sort_tenants_by_name ruby_tenants
  # tenants_by_name

print "[1] View all apartments\n" +
      "[2] View all tenants\n" +
      "Enter an option: "
input = gets.chomp

if input.to_i == 1
  puts print_apartments ruby_apartments
elsif input.to_i == 2
  puts print_tenants ruby_tenants
end
