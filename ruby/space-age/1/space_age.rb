

class SpaceAge
  attr_reader :seconds
  SECONDS_PER_YEAR = 31_557_600.0

  MERCURY_YEAR = 0.2408467
  VENUS_YEAR   = 0.61519726
  EARTH_YEAR   = 1.0
  MARS_YEAR    = 1.8808158
  JUPITER_YEAR = 11.862615
   SATURN_YEAR = 29.447498
  URANUS_YEAR  = 84.016846
  NEPTUNE_YEAR = 164.79132

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_mercury
    earth_year / MERCURY_YEAR
  end

  def on_venus
    earth_year / VENUS_YEAR
  end

  def on_earth
    earth_year
  end

  def on_mars
    earth_year / MARS_YEAR
  end

  def on_jupiter
    earth_year / JUPITER_YEAR
  end

  def on_saturn
    earth_year / SATURN_YEAR
  end

  def on_uranus
    earth_year / URANUS_YEAR
  end

  def on_neptune
    earth_year / NEPTUNE_YEAR
  end

  private

  def earth_year
    seconds / SECONDS_PER_YEAR
  end
end
