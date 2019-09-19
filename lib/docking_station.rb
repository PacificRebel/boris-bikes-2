require_relative 'bike'

class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
   end

  def dock(bike)
   #add bike to self
   @bike = bike
  end

  def bike
    @bike
  end
end
