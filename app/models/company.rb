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

	def self.search(search)
	  #where("city ILIKE ?","%#{search}%")
	  where("city LIKE ?", "%#{search}%") 

 	end
end
