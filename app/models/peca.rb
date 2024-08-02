class Peca < ApplicationRecord
  belongs_to :fornecedor

  validates :nome, presence: true
  validates :valor, presence: true
  validates :fornecedor_id, presence: true
end