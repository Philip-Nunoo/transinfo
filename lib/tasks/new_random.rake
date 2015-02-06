# new_random.rake
namespace :new_random do
  desc "Generate random shops"

  task shops: :environment do
    start_time = DateTime.now
  	Shop.destroy_all

  	(1..10).each do |s|
          # Generate random lat and lng points
          lat = rand * (5.70-5.59) + 5.59
          lng = rand * (0.18-0.1) + 0.1
          Shop.create 	name: "Shop #{s}", description: "description #{s}",
						tel: "0230232323", longitude: -lng, latitude: lat          		
  	end
    puts "Built task in #{((DateTime.now - start_time) * 24 * 60 * 60).to_i} seconds. Date: #{start_time.to_date}. "
  end

  desc "Generate random congestions"
  task congestions: :environment do
    start_time = DateTime.now
  	Congestion.destroy_all
  	
  	(1..100).each do |s|
          # Generate random lat and lng points
          lat = rand * (5.70-5.59) + 5.59
          lng = rand * (0.18-0.1) + 0.1
          # puts "#{lat} : -#{lng}"
          Congestion.create from: "Shop #{s}", to: "description #{s}",
							time: "0230232323", longitude: -lng, latitude: lat          		
  	end
    puts "Built task in #{((DateTime.now - start_time) * 24 * 60 * 60).to_i} seconds. Date: #{start_time.to_date}. "
  end
end
