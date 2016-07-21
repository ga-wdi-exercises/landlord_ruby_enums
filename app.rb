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
            run_program
        end
    elsif answer == '2'
        puts 'Type \'p\' to view all of your tenants!'
        answer = gets.chomp
        if answer == 'p'
            puts ruby_tenants.map{|object| object.get_ten}
            run_program(ruby_apartments, ruby_tenants)
        else
            run_program
        end
    elsif answer == '3'
        puts 'Type \'b\' to view all of your tenants!'
        answer = gets.chomp
        if answer == 'b'
            puts 'I called a method'
        else
            run_program
        end
    elsif answer == 'exit'
        exit
    else
        run_program
    end
end
# binding.pry
run_program(ruby_apartments, ruby_tenants)
