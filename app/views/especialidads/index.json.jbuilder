json.array!(@especialidads) do |especialidad|
  json.extract! especialidad, :id, :espnombre, :esplugar
  json.url especialidad_url(especialidad, format: :json)
end
