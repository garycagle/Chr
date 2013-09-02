json.array!(@events) do |event|
  json.extract! event, :detail, :title, :date
  json.url event_url(event, format: :json)
end