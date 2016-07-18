json.array! @companies do |company|
  json.name company.name
  json.products company.products do |product|
    json.body product.body
  end
end
