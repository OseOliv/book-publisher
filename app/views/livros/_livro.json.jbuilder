json.extract! livro, :id, :titulo, :isbn, :autor_id, :created_at, :updated_at
json.url livro_url(livro, format: :json)
