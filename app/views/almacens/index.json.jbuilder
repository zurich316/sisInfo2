json.array!(@almacens) do |almacen|
  json.extract! almacen, :id, :cod, :nom, :costo, :cantidad
  json.url almacen_url(almacen, format: :json)
end
