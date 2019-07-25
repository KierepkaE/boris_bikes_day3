require_relative 'bike'
class DockingStation

  def initialize
    @bikes = []
    DEFAULT_CAPACITY = 20
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

private

    def full?
      @bikes.count => DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end

end
