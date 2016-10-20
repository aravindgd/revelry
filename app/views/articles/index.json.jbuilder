json.owner_name @owner.name
json.articles do
  json.array! @articles do |article|
    json.id article.id
    json.name article.name
    json.price number_to_currency article.price
    json.description article.description
  end
end
