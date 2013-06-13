json.array!(@roleships) do |roleship|
  json.extract! roleship, :participant_id, :film_id, :role_id
  json.url roleship_url(roleship, format: :json)
end