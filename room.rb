class Room
  attr_accessor :room_number, :room_songs, :room_size, :guests, :playlist

  def initialize(room_number, room_songs, playlist)
    @room_number = room_number
    @room_songs = room_songs
    @room_size = 2
    @guests = []
    @playlist = playlist
  end


  def room_has_song
    @room_songs.size
  end

  def guest_check_in(guest)
    @guests.push(guest)
  end

  def guest_check_out(guest)
    @guests.delete(guest)
  end

  def check_room_size_for_availibility
    if @room_size > @guests.size
      return true
    else
      return false
    end


  end


end
