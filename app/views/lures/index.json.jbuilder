json.array!(@lures) do |lure|
  json.extract! lure, :id, :name, :genre, :kind, :maker, :price, :weight, :buy_link
  json.url lure_url(lure, format: :json)
end
