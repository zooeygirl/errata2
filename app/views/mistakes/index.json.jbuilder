json.array!(@mistakes) do |mistake|
  json.extract! mistake, :id, :category
  json.url mistake_url(mistake, format: :json)
end
