require_relative 'bike'

class DockingStation
  # attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
    # if @bikes.length < 1
    #   fail 'No bikes available'
    # else
    #   @bikes.pop
    # end
   end

  def dock(bike)
       #add bike to self
       fail "Docking station is full" if @bikes.count >= 20
       @bikes << bike
    # if @bikes.count >= 20
    #   fail 'Docking station is full'
    # else
    #   @bikes << bike
    # end
  end

  def bikes
    @bikes
  end
end
