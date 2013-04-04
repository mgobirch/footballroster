require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "the truth" do
    assert_equal Player.eligible_years_for_year(2005), [2005, 2006, 2007, 2008]
  end
end
