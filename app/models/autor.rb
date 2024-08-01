class Autor < ApplicationRecord
  has_many :livros
  validates :nome, presence: true
  validates :cpf, presence: true
end