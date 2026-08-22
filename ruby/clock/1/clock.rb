
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    tmp_hour = hour
    tmp_hour += (minute / 60)

    @hour = (tmp_hour % 24)
    @minute = (minute % 60)
  end

  def +(rhs)
    Clock.new(hour: hour + rhs.hour, minute: minute + rhs.minute)
  end

  def -(rhs)
    Clock.new(hour: hour - rhs.hour, minute: minute - rhs.minute)
  end

  def ==(rhs)
    hour == rhs.hour && minute == rhs.minute
  end

  def to_s
    format("%02d:%02d", @hour, @minute)
  end
end
