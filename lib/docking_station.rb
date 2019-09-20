require_relative 'bike'

class DockingStation
  attr_reader :bikes

  ::DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
    # if @bikes.length < 1
    #   fail 'No bikes available'
    # else
    #   @bikes.pop
    # end
   end

  def dock(bike)
       #add bike to self
        raise "Docking station is full" if full?
         @bikes << bike
    # if @bikes.count >= 20
    #   fail 'Docking station is full'
    # else
    #   @bikes << bike
    # end
  end


private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end


  # def bikes
  #   @bikes
  # end
end
