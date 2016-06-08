class Company < ActiveRecord::Base
	has_many :vacancies, dependent: :destroy
	
  	validates :name, presence: true
 	validates :contact, :numericality => true
 	validates_length_of :contact, minimum: 10
  	validates :pincode, :numericality => true

  

  def  match_zip
	geo = GeoKit::Geocoders::MultiGeocoder.multi_geocoder('90210')
	if geo.success
  	geo.state # => CA
  	geo.city  # => Beverly Hills
	end
 end
 def city_state
 	 State.all.map do |s| 
      cities = s.cities.map.with_index(1){|c, i| {i.to_s => c.name}}
      {
        :state => s.name, 
        :cities => cities
    }
end
 end


	def self.search(search)
	  #where("city ILIKE ?","%#{search}%")
	  where("city LIKE ?", "%#{search}%") 

 	end
end
