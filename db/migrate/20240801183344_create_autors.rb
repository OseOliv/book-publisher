class CreateAutors < ActiveRecord::Migration[7.1]
  def change
    create_table :autors do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
