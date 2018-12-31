require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require 'date'
require './lib/count_down'

class CountDownTest < Minitest::Test
  def test_it_exisits
    count = CountDown.new
    goal_date = Date.parse('16-01-2019')

    assert_instance_of CountDown, count
    assert_equal count.end_date, goal_date
  end

end
