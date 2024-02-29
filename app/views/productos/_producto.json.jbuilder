json.extract! producto, :id, :nombre_producto, :descripcion_producto, :stock, :precio_producto, :color, :talla, :tipo_producto, :created_at, :updated_at
json.url producto_url(producto, format: :json)
