class Apartments
  attr_accessor :id, :address, :monthly_rent, :square_feet, :apartment_id, :name
  def self.show_apartments
    $apartments.each do |a_item|
      puts "#{a_item[:id]}, #{a_item[:address]}, #{a_item[:monthly_rent]}, #{a_item[:square_feet]}"
    end
  end

  def self.show_app_ten
    $apartments.each do |a_item|
      puts "#{a_item[:id]}, #{a_item[:address]}, #{a_item[:monthly_rent]}, #{a_item[:square_feet]}"
      $tenants.each do |t_item|
        if "#{t_item[:apartment_id]}" == "#{a_item[:id]}"
          puts "#{t_item[:name]}"
        end
      end
    end
  end
end
