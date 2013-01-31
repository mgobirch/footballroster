class Roster < ActiveRecord::Base
  attr_accessible :school, :year
	has_many :eligible_years
	has_many :players, :through => :eligible_years
	def name
		"#{school} #{year}"
	end
end
