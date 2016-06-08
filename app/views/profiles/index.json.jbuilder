json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :contact, :mark_10th, :mark_12th, :graduation, :gra_mark, :post_graduation, :post_gra_mark
  json.url profile_url(profile, format: :json)
end
