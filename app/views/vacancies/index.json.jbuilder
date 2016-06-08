json.array!(@vacancies) do |vacancy|
  json.extract! vacancy, :id, :name, :no_of_vacancy, :eligibilty, :technology, :salary, :experience, :key_skilles
  json.url vacancy_url(vacancy, format: :json)
end
