json.array!(@clients) do |client|
  json.extract! client, :id, :ci, :name, :last, :telf
  json.url client_url(client, format: :json)
end
