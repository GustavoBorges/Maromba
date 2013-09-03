json.array!(@suplementos) do |suplemento|
  json.extract! suplemento, :nome, :marca, :link
  json.url suplemento_url(suplemento, format: :json)
end
