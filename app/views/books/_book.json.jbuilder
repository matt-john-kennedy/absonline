json.extract! book, :id, :name, :author, :description, :price, :genre_id, :condition, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
