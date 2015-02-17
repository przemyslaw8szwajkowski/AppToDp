json.array!(@lists) do |list|
  json.extract! list, :id, :name, :status, :date_end
  json.url list_url(list, format: :json)
end
