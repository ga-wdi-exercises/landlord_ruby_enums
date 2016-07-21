# require 'pry'
require_relative "data"
require './models/apartment'
require './models/tenant'
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |apartment|
    iterative = apartment.values
    ruby_apartments.push(Apartment.new(iterative[0],iterative[1],iterative[2],iterative[3]))
end

tenants.each do |tenant|
    titerative = tenant.values
    ruby_tenants.push(Tenant.new(titerative[0],titerative[1],titerative[2],titerative[3]))
end

def run_program(ruby_apartments, ruby_tenants)
    puts 'Welcome to your program Bob! Would you like access to apartments, tenants or both?(1/2/3) If you want to exit type \'exit\'!'
    answer = gets.chomp
    if answer == '1'
        puts 'Type \'a\' to view all of your properties!'
        answer = gets.chomp
        if answer == 'a'
            puts ruby_apartments.map{|object| object.get_apt}
            run_program(ruby_apartments, ruby_tenants)
        else
            run_program(ruby_apartments, ruby_tenants)
        end
    elsif answer == '2'
        puts 'Type \'p\' to view all of your tenants! Type q to find a specific tenant and address'
        answer = gets.chomp
        if answer == 'p'
            puts ruby_tenants.map{|object| object.get_ten}
            run_program(ruby_apartments, ruby_tenants)
        elsif answer =='q'
            name = gets.chomp
            relevant = ruby_tenants.select{|object| object.name == name}
            puts relevant[0].get_ten_apt(ruby_apartments)
            run_program(ruby_apartments, ruby_tenants)
        else
            run_program(ruby_apartments, ruby_tenants)
        end
    elsif answer == '3'
        puts 'Type \'b\' to view all of your tenants and their address!'
        answer = gets.chomp
        if answer == 'b'
            puts ruby_tenants.map{|object| object.get_ten_apt(ruby_apartments)}
            run_program(ruby_apartments, ruby_tenants)
        else
            run_program(ruby_apartments, ruby_tenants)
        end
    elsif answer == 'exit'
        exit
    else
        run_program(ruby_apartments, ruby_tenants)
    end
end
# binding.pry
run_program(ruby_apartments, ruby_tenants)
