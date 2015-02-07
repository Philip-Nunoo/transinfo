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
		places= [{name: "Dansoman", lon: 1, lat: 2}, {name: "Lapaz", lon: 1, lat: 2}, 
				 {name: "Teshie", lon: 1, lat: 2}, {name: "Accra", lon: 1, lat: 2}, 
				 {name: "Mallam", lon: 1, lat: 2}, {name: "Kasoa", lon: 1, lat: 2}, 
				 {name: "Barrier", lon: 1, lat: 2}, {name: "Kaneshie", lon: 1, lat: 2}, 
				 {name: "Odorkor", lon:1, lat: 2}, {name: "Labadi", lon: 1, lat: 2}, 
				 {name: "Spintex", lon: 1, lat: 2}, {name: "Ashaiman", lon: 1, lat: 2}, 
				 {name: "Nima", lon: 1, lat: 2}, {name: "Korle-bu", lon: 1, lat: 2},
				 {name: "Madina", lon: 1, lat: 2}, {name: "Osu", lon: 1, lat: 2}, 
				 {name: "37", lon: 1, lat: 2}, {name: "St Johns", lon: 1, lat: 2}];

		start_time = DateTime.now
		Congestion.destroy_all

		# Generate a random generator wish simulates
		# time within the 24 hour period
		
		(places).each do |place|
			# Generate random from and to within 
			# that hour
			# Generate random lat and lng points
			Congestion.create place: place[:name], longitude: place[:lon], 
							  latitude: place[:lat], out_level: 1, in_level: 2
			# lat = rand * (5.70-5.59) + 5.59
			# lng = rand * (0.18-0.1) + 0.1

			# Congestion.create 	from: "Accra", to: "Circle", level: random_level,
			# 					time: "0230232323", longitude: -lng, latitude: lat          		
		end
		puts "Built tasksk in #{((DateTime.now - start_time) * 24 * 60 * 60).to_i} seconds. Date: #{start_time.to_date}. "
  	end

  	desc "Generate random tel_data"
	task telData: :environment do
		start_time = DateTime.now
		TelData.destroy_all

		(1..1000).each do |s|
			# Generate random lat and lng points
			lat = rand * (5.70-5.59) + 5.59
			lng = rand * (0.18-0.1) + 0.1
			TelData.create longitude: -lng, latitude: lat          		
      	end
		puts "Built task in #{((DateTime.now - start_time) * 24 * 60 * 60).to_i} seconds. Date: #{start_time.to_date}. "
	end
end
