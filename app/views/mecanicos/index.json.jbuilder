json.array!(@mecanicos) do |mecanico|
  json.extract! mecanico, :id, :nombre, :apellido
  json.url mecanico_url(mecanico, format: :json)
end
