json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :cod, :cost
  json.url ventum_url(ventum, format: :json)
end
