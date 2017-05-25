class Tenants
  attr_accessor :id, :name, :age, :apartment_id
  def self.show_tenants
    $ruby_tenants.each do |t_item|
      puts "#{t_item[:id]}, #{t_item[:name]}, #{t_item[:age]}, #{t_item[:apartment_id]}"
    end
  end
end
