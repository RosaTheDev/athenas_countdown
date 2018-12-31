class CountDown
  attr_reader :end_date

  def initialize
    @end_date = Date.parse('16-01-2019')
  end

  def days_until_goal(today = Date.today)
    end_date.mjd - today.mjd
  end
end
