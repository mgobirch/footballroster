class Player < ActiveRecord::Base
	attr_accessible :name, :number, :positions_attributes, :height, :weight, :year_of_eligibility, :eligible_years_attributes, :roster_id
	has_many :positions, :class_name => 'PlayerPosition'
	has_many :eligible_years
	has_many :rosters, :through => :eligible_years
  accepts_nested_attributes_for :eligible_years
  accepts_nested_attributes_for :positions, :reject_if => :all_blank, :allow_destroy => true

	validates_presence_of :number
	validates_presence_of :name
	
	def self.eligible_years_for_year(year)
	  [year, year + 1, year + 2, year + 3]
	end
end
