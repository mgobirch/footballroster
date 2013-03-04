class Player < ActiveRecord::Base
	attr_accessible :number, :position, :height, :weight, :year_of_eligibility, :roster_id
	has_many :eligible_years
	has_many :rosters, :through => :eligible_years
  accepts_nested_attributes_for :eligible_years

	validates_presence_of :number
end
