require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "the truth" do
    player = Player.new
    assert_equal player.eligible_years_for_year(2005), [2005, 2006, 2007, 2008]
  end
end
