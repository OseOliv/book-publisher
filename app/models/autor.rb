class Autor < ApplicationRecord
  has_many :livros
  validates :cpf, presence: true
end