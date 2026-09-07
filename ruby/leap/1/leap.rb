class Year
  def self.leap?(year)
    if year % 100 == 0
      return year % 400 == 0 ? true : false
    end

    return true if year % 4 == 0  

    false
  end
end
