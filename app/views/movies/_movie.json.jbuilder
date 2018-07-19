json.extract! movie, :id, :name, :genre_id, :rent_price, :created_at, :updated_at
json.url movie_url(movie, format: :json)
