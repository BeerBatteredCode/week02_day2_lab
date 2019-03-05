class Bus
  attr_reader :number, :destination, :passengers
  def initialize(number, destination)
    @number = number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum!"
  end

  def how_many_passengers
    return @passengers.count
  end


  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers = []
  end

end
