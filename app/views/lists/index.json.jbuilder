json.array!(@lists) do |list|
  json.extract! list, :id, :producto, :costo, :cantidad
  json.url list_url(list, format: :json)
end
