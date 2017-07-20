require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

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

  # Be sure to send an array of
  # Hashes to this functions
  # [{}]
  def pretty_print data

    header = ""

    # populate an array with an appropriate length
    # for each column
    lens = []
    data[0].each_with_index { |(k,v), index|
      len = (get_longest_value_of_column data, data[0].keys[index]) + 2
      lens << len
    }

    # print the header
    data[0].each_with_index { |(k,v), index|
      len = lens[index]
      # print "#{len} index #{index} .. "
      printf "%-#{len}s", k.to_s.upcase
      header += "-" * len
    }

    puts
    puts header

    # print the data
    data.each { |item|
      item.each_with_index { |(k,v), index|
        len = lens[index]
        printf "%-#{len}s", v.to_s
      }
      puts
    }

    puts "\n"

  end

  # returns the length of the longest width needed
  # for a column
  def get_longest_value_of_column data, key
    longest = key.to_s.length # the keys need space too!

    data.each { |hash|
      v = hash[key]
      if v.to_s.length > longest
        longest = v.to_s.length
      end
    }
    longest
  end

  # get_addresses returns a hash of all the addresses
  # in apartments
  def get_addresses apts
    return apts.map { |apt| { address: apt[:address] } }
  end

  # get_apartments_with_tenants returns the
  # list of apts with an added key of tenants
  # tenants: "name1, name2, ...."
  def get_apartments_with_tenants apts, tenants
    return apts.map { |apt|
      names = get_tenant_names_in_apt tenants, apt[:id]
      apt[:tenants] = names.join(', ')
      apt
    }
  end

  # returns the tenant names that are in apt_id as
  # and array
  def get_tenant_names_in_apt tenants, apt_id
    names = tenants.select { |tenant| tenant[:apartment_id] == apt_id }
    names.map! { |name| name[:name] }
  end

  # get_all_tenant_names returns a hash of all the tenant names
  # if apts is sent in this means the user wants the address
  # of the tenant also
  def get_tenant_names tenants, apts = nil
    data = tenants.map { |tenant|
      if apts != nil
        address = get_tenant_address tenant[:apartment_id], apts
        tenant = {
          name: tenant[:name],
          address: address
        }
      else
        tenant = { name: tenant[:name] }
      end
    }
    return data
  end

  # get_tenant_address returns the address of a tenant
  def get_tenant_address apt_id, apts
      apts.each { |apt|
        if apt[:id] == apt_id
          return apt[:address]
        end
      }
    end

  # get_apts_less_than returns the apartments that
  # are less than amount
  def get_apts_less_than apts, amount
    return apts.select { |apt| apt[:monthly_rent] < amount }
  end

  # get_over_age returns the tenants that are
  # over a certain age
  def get_over_age tenants, age
    return tenants.select { |tenant| tenant[:age] > age }
  end

  # returns the tenants that are in apt_id
  def get_tenants_in_apt tenants, apt_id
    return tenants.select { |tenant| tenant[:apartment_id] == apt_id }
  end

  # sorts a hash of tenants by age
  def sort_tenants_by_age tenants
    return tenants.sort_by { |tenant| tenant[:age] }
  end

  # sorts a hash of tenants by name
  def sort_tenants_by_name tenants
    return tenants.sort_by { |tenant| tenant[:name] }
  end

  # Print all the addresses for the apartments
  addresses = get_addresses apartments
#  pretty_print addresses

  # Print all the names for tenants
  tenant_names = get_tenant_names tenants
#  pretty_print tenant_names

  # Print only apartments that are less then 700 in rent
  less_than_700 = get_apts_less_than apartments, 700
#  pretty_print less_than_700

  # Print only tenants that are over the age of 44
   over_44 = get_over_age tenants, 44
#   pretty_print over_44

  # Print only tenants that have an apartment id of 1
    apt_1_tenants = get_tenants_in_apt tenants, 1
#    pretty_print apt_1_tenants

  # Print all the tenants in order from youngest to oldest
    tenants_by_age = sort_tenants_by_age tenants
#    pretty_print tenants_by_age

  # Print the names of all the tenants alphabetically
    tenants_by_name = sort_tenants_by_name tenants
#    pretty_print tenants_by_name

# print "[1] View all apartments\n" +
#       "[2] View all tenants\n" +
#       "[3] View all apartments with tenants" +
#       "Enter an option: "
#
# puts "\n\n"
#input = gets.chomp
input = "3"

if input.to_i == 1
  pretty_print apartments
elsif input.to_i == 2
  pretty_print tenants
elsif input.to_i == 3
  pretty_print (get_apartments_with_tenants apartments, tenants)
elsif input.to_i == 4
  print_all_apartments_with_tenants apartments, tenants
end
