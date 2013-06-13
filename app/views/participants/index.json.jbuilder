json.array!(@participants) do |participant|
  json.extract! participant, :name
  json.url participant_url(participant, format: :json)
end