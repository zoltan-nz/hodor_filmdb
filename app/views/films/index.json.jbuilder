json.array!(@films) do |film|
  json.extract! film, :title
  json.url film_url(film, format: :json)
end