class Applicant < ActiveRecord::Base
  has_many :previous_employments, dependent: :destroy
  has_many :references, dependent: :destroy
  has_one :personal_transportation_info, dependent: :destroy
  
  accepts_nested_attributes_for :previous_employments, :references, :personal_transportation_info
end
