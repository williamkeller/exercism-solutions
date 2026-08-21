

class Robot
  attr_reader :name

  class << self

    def forget
      @memory = Set.new
    end

    def memory
      @memory ||= Set.new
    end

    def store_name(name)
      memory << name
    end

    def check_name(name)
      memory.include? name
    end

  end

  def initialize
    reset
  end

  def reset
    loop do
      name = generate_name
      if Robot::check_name(name) == false
        Robot::store_name(name)
        @name = name
        break
      end
    end
  end  

  def generate_name
    [
      random_letter,
      random_letter,
      random_digit,
      random_digit,
      random_digit
    ].join
  end

  def random_letter
    (rand(0..25) + 65).chr
  end

  def random_digit
    (rand(0..9) + 48).chr
  end
end
