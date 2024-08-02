class Fornecedor < ApplicationRecord
  has_many :pecas
  validates :cnpj, presence: true
  validates :nome, presence: true
end