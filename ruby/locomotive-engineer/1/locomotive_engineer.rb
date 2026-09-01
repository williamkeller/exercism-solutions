class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_list)
    wagon_list
  end

  def self.fix_list_of_wagons(wagons, missing_wagons)
    reordered = wagons.slice(2..) + wagons.slice(0..1)
    index = reordered.index(1)

    reordered.insert(index + 1, missing_wagons).flatten
  end

  def self.add_missing_stops(base, **stops)
    base[:stops] = []

    (1..stops.keys.length).each do |i|
      key = "stop_#{i}".to_sym
      base[:stops] << stops[key]
    end

    base
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end
