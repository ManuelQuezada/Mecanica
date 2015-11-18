json.array!(@mecanico_especialidads) do |mecanico_especialidad|
  json.extract! mecanico_especialidad, :id, :mecanico_id, :especialidad_id
  json.url mecanico_especialidad_url(mecanico_especialidad, format: :json)
end
