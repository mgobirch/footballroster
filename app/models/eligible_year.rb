class EligibleYear < ActiveRecord::Base
  attr_accessible :status, :status_explanation, :transfer_school, :year
  
  belongs_to :roster
end
