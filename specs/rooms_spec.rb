require("minitest/autorun")
require("minitest/rg")


require_relative("../guests")
require_relative("../song")
require_relative("../room")

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("spongebob", 80, "Thunder struck")
    @guest2 = Guest.new("Patrick", 70, "Basket case")
    @guest3 = Guest.new("Squidward", 75, "what's my age again!")
    @song1 = Song.new("Thunder struck")
    @song2 = Song.new("Messiah")
    @song3 = Song.new("The mother we share")
    @song4 = Song.new("What's my age again!")
    @song5 = Song.new("Basket case")

    @playlist = [@song1, @song2, @song3, @song4, @song5]

    @room1 = Room.new(1,[@playlist])
    @room2 = Room.new(2,[@playlist])
    @room3 = Room.new(3,[@playlist])
  end

  def test_room_size
    assert_equal(2, @room1.room_size)
  end

  def test_room_has_song
    assert_equal(1, @room3.room_has_song)
  end

  def test_guest_can_check_in
    @room1.guest_check_in(@guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_guest_can_check_out
    @room1.guest_check_in(@guest1)
    @room1.guest_check_out(@guest1)
    assert_equal(0, @room1.guests.count)
  end

  def test_room_size_for_availibility
    assert_equal(true, @room2.check_room_size_for_availibility)

  end

  def test_room_is_full
    @room2.guest_check_in(@guest1)
    @room2.guest_check_in(@guest2)
    assert_equal(false, @room2.check_room_size_for_availibility)
  end

end
