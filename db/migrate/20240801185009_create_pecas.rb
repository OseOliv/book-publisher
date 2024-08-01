class CreatePecas < ActiveRecord::Migration[7.1]
  def change
    create_table :pecas do |t|
      t.string :nome
      t.decimal :valor
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
