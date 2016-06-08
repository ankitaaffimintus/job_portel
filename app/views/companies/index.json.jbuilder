json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :contact, :city, :state, :pincode
  json.url company_url(company, format: :json)
end
