json.array!(@makers) do |maker|
  json.extract! maker, :id, :name, :web_url, :logo
  json.url maker_url(maker, format: :json)
end
