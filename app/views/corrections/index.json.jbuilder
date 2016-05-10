json.array!(@corrections) do |correction|
  json.extract! correction, :id, :essay_id, :mistake_id
  json.url correction_url(correction, format: :json)
end
