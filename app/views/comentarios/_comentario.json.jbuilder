json.extract! comentario, :id, :usuario_id, :articulo_id, :cuerpo, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
