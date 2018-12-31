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

  def test_it_can_return_a_number
    count = CountDown.new
    dummy_date = Date.parse('30-12-2018')
    expected = 17
    result = count.days_until_goal(dummy_date)

    assert_instance_of Integer, count.days_until_goal
    assert_equal expected, result
  end

end
