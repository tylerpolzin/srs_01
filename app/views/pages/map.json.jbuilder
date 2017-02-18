json.array!(@stores) do |store|
  json.extract! store, :lat, :long, :name
  json.url store_url(store, format: :json)
end