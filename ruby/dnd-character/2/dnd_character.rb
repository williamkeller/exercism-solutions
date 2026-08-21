
class DndCharacter
  def self.modifier(value)
    ((value - 10) / 2.0).floor
  end

  def strength
    @strength ||= roll_attribute
  end

  def dexterity
    @dexterity ||= roll_attribute
  end

  def constitution
    @constitution ||= roll_attribute
  end

  def intelligence
    @intelligence ||= roll_attribute
  end

  def wisdom
    @wisdom ||= roll_attribute
  end

  def charisma
    @charisma ||= roll_attribute
  end

  def hitpoints
    @hitpoints ||= DndCharacter.modifier(constitution) + 10
  end

  private

  def roll_attribute
    Array.new(4) { rand 1..6 }.sort.slice(1..).sum
  end

end
