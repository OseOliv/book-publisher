class Montagem < ApplicationRecord
  belongs_to :livro
  has_many :pecas
end