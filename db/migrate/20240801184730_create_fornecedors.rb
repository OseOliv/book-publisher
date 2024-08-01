class CreateFornecedors < ActiveRecord::Migration[7.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :cnpj
      t.string :conta

      t.timestamps
    end
  end
end
