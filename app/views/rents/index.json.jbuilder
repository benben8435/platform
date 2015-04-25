json.array!(@rents) do |rent|
  json.extract! rent, :id, :title, :date_from, :date_to, :description
  json.url rent_url(rent, format: :json)
end
