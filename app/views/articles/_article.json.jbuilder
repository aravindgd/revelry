json.extract! article, :id, :owner_id, :name, :price, :description, :created_at, :updated_at
json.url article_url(article, format: :json)