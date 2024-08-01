class Fornecedor < ApplicationRecord
  has_many :pecas
  validates :cnpj, presence: true
end