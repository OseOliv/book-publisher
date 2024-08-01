class CreateMontagems < ActiveRecord::Migration[7.1]
  def change
    create_table :montagems do |t|
      t.references :livro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
