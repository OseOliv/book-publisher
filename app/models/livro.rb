class Livro < ApplicationRecord
  belongs_to :autor
  has_many :montagens
  validates :isbn, presence: true
end