require 'rails_helper'

RSpec.describe Autor, type: :model do
  it 'is valid with valid attributes' do
    autor = build(:autor)
    expect(autor).to be_valid
  end

  it 'is not valid without a name' do
    autor = build(:autor, nome: nil)
    expect(autor).not_to be_valid
  end

  # Adicione mais testes conforme necessário
end