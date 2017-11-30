json.extract! formulario, :id, :nombre, :direccion, :telefono, :created_at, :updated_at
json.url formulario_url(formulario, format: :json)
