json.array!(@session_items) do |session_item|
  json.extract! session_item, :id, :item_id, :session_id, :session_qty, :note
  json.url session_item_url(session_item, format: :json)
end
