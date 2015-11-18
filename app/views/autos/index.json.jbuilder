json.array!(@autos) do |auto|
  json.extract! auto, :id, :patente, :color, :usuario_id
  json.url auto_url(auto, format: :json)
end
