require("minitest/autorun")
require("minitest/rg")


require_relative("../song")


class TestSongs < MiniTest::Test

  def setup
    @song1 = Song.new("Thunder struck", "ACDC")
    @song2 = Song.new("What's my age again!", "Blink182")
    @song3 = Song.new("Basketcase", "Greenday")
  end


  def test_song_has_title
    assert_equal("Thunder struck", @song1.title)
  end

  def test_song_has_artist
    assert_equal("ACDC", @song1.artist)
  end
end
