json.array!(@users_lures) do |users_lure|
  json.extract! users_lure, :id, :user_id, :lure_id, :comment
  json.url users_lure_url(users_lure, format: :json)
end
