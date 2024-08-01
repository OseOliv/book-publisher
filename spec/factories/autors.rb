FactoryBot.define do
  factory :autor do
    nome { "Nome do Autor" }
    cpf { "12345678900" }  # Adicione um valor padrão para cpf
    # Adicione outros atributos aqui se o modelo Autor tiver mais campos
  end
end
