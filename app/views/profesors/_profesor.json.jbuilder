json.extract! profesor, :id, :nombre, :apellido, :email, :horario_id, :created_at, :updated_at
json.url profesor_url(profesor, format: :json)
