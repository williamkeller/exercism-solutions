
class Gigasecond
  GIGA_SECOND = 1_000_000_000

  def self.from(time)
    time + GIGA_SECOND
  end
end
