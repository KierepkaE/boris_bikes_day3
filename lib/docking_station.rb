require_relative 'bike'
class DockingStation

    attr_reader :bike

    def release_bike
<<<<<<< HEAD
      fail "There are no bikes" unless @bike
      @bike = Bike.new
=======
          Bike.new
>>>>>>> 2a971714e72be1d34afade4fce61d8d57226db6b
    end

    def dock(bike)
        @bike = bike
    end

end