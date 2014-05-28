json.array!(@currencies) do |currency|
  json.extract! currency, :id, :name, :region, :weeklychange, :monthlychange, :yearlychange
  json.url currency_url(currency, format: :json)
end
