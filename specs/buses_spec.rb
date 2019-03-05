require("minitest/autorun")
require("minitest/rg")

require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")


class BusTest < MiniTest::Test

  def setup

    @bus1 = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Jenn", 27)
    @person2 = Person.new("Grant", 31)

    @bus_stop1 = BusStop.new("Prince's Street")

    @bus_stop2 = BusStop.new("Newington")
    @bus_stop2.add_to_queue(@person1)
    @bus_stop2.add_to_queue(@person2)


  end
  #bus tests
  def test_has_route_number
    assert_equal(22, @bus1.number)
  end

  def test_has_destination
    assert_equal("Ocean Terminal", @bus1.destination)
  end

  def test_drive
    assert_equal("Brum Brum!", @bus1.drive)
  end

  #Part b

  def test_has_passengers
    assert_equal([], @bus1.passengers)
  end

  def test_number_of_passengers
    result = @bus1.how_many_passengers
    assert_equal(0, result)
  end

  def test_pick_up
    @bus1.pick_up(@person1)
    assert_equal(1, @bus1.how_many_passengers)
  end

  def test_drop_off
    @bus1.pick_up(@person2)
    @bus1.drop_off(@person2)
    assert_equal(0, @bus1.how_many_passengers)
  end

  def test_empty
    @bus1.pick_up(@person1)
    @bus1.pick_up(@person2)
    @bus1.empty()
    assert_equal(0, @bus1.how_many_passengers)
  end

  #person tests

  def test_has_name
    assert_equal("Jenn", @person1.name)
  end
  def test_has_age
    assert_equal(27, @person1.age)
  end

  #busstop tests

  def test_busstop_has_name
    assert_equal("Prince's Street", @bus_stop1.name)
  end

  def test_for_queue
    assert_equal([], @bus_stop1.queue)
  end

  def test_add_to_queue
    @bus_stop1.add_to_queue(@person1)
    assert_equal(1, @bus_stop1.queue.count)
  end


  #

  def test_pick_up_from_stop


    assert_equal(0, )
  end

end
