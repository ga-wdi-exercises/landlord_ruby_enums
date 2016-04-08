app = [data[:apartments].each {|ap| puts "Property: #" + ap[:id].to_s + "; Located at: " + ap[:address].to_s},
   data[:tenants].each {|t| puts "Tenant ID:" + t[:id].to_s + "; Tenant Name:" + t[:name].to_s + ";"},
   data[:apartments].each do |ap|
     puts "The following people live in apartment number " + ap[:id].to_s
     data[:tenants].each_index.select{|i| data[:tenants][i][:apartment_id] == ap[:id]}.each {|t| puts data[:tenants][t][:name]}
     puts "------------------------"
   end,
 ]


 app[2]
