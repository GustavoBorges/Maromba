json.array!(@fotos) do |foto|
  json.extract! foto, :data, :descricao
  json.url foto_url(foto, format: :json)
end
