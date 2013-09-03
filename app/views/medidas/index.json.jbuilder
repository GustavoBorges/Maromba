json.array!(@medidas) do |medida|
  json.extract! medida, :ombro, :torax, :braco_esquerdo, :braco_direito, :panturrilha_esquerda, :panturrilha_direita, :abdomem, :cintura, :quadril, :coxa_esquerda, :coxa_direita
  json.url medida_url(medida, format: :json)
end
