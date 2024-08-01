class CreateLivros < ActiveRecord::Migration[7.1]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :isbn
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
