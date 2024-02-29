json.extract! comprobante, :id, :tipo_comprobante, :precio_total_venta, :metodo_pago, :estado, :created_at, :updated_at
json.url comprobante_url(comprobante, format: :json)
