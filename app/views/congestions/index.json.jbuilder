json.array!(@congestions) do |congestion|
  json.extract! congestion, :id, :from, :to, :longitude, :latitude, :time, :level
  json.url congestion_url(congestion, format: :json)
end
