require_relative 'bike'
class DockingStation

  def initialize
    @bikes = []
    @capacity = 20
  end

    attr_reader :bike, :bikes


    def release_bike
      fail "There are no bikes" if empty?
      @bike = @bikes.pop
    end

    def dock(bike)
      fail "Docking station full" if full?
      @bikes << bike
      bike
    end

    def full?
      if @bikes.count == @capacity
        true
      else
        false
      end
    end

    def empty?
      @bikes.count < 1
    end

end
