class Profile < ActiveRecord::Base
 validates_length_of :contact, minimum: 10
 validates :name, presence: true
 validates :mark_10th,    :numericality => true
 def a_method_used_for_validation_purposes
    errors[:gra_mark] = "cannot contain the characters !@#%*()_-+="
 end
validate :any_present?
def any_present?
  if %w(name contact graduation).all?{|attr| self[attr].blank?}
    errors.add :base, "Error message"
  end
end

end
