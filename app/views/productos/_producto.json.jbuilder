json.extract! producto, :id, :nombre, :titulo, :descripcion, :defecto, :categoria, :estado, :horacreacion, :horaaprobacion, :horasolicitud, :idadministrador, :idsolicitante, :created_at, :updated_at
json.url producto_url(producto, format: :json)
