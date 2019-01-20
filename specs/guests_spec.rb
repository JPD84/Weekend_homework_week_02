require("minitest/autorun")
require("minitest/rg")
require ('pry')


require_relative("../song")
require_relative("../room")
require_relative("../guests")

class TestGuests < MiniTest::Test

  def setup
    # binding.pry
    @guest1 = Guest.new("spongebob", 80, "Thunder struck")
    @guest2 = Guest.new("Patrick", 70, "Basket case")
    @guest3 = Guest.new("Squidward", 75,"what's my age again!")
  end


  def test_does_guest_have_name
    assert_equal("spongebob", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(70, @guest2.money)
  end

  def test_guest_favourite_song
    assert_equal("what's my age again!", @guest3.song)
  end
end
