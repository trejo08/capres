json.array!(@admin_complaints) do |admin_complaint|
  json.extract! admin_complaint, :id
  json.url admin_complaint_url(admin_complaint, format: :json)
end
