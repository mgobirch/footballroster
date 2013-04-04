class PlayerPosition < ActiveRecord::Base
  belongs_to :player
  attr_accessible :position, :started_at
  Positions = ['QB' , 'RB' , 'FB' , 'TE' , 'WR' , 'OT' , 'OG' , 'C' , 'DE' , 'DT' , 'LB' , 'CB' , 'S' , 'P' , 'K']
end
