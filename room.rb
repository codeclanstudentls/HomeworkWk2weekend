class Room

  attr_reader :singers, :room_colour, :jukebox

  def initialize(room_colour)
    @room_colour = room_colour
    @singers = []
    @jukebox = []

  end

  def check_in_guest(singer)
    @singers.push(singer)

  end

  def check_out_guest(singer)
    @singers.pop
#I would like to be able to remove a singer by id number
end

def size_of_room()
  @singers.length
end

  # def room_is_full(singer)
  #   if @singers.length >= 10
  
  #   else @singers.push(singer)
  #   end
  # end

  def add_song_to_room(song)
    @jukebox.push(song)
  end


  # def find_guest_by_id(singers, id_num)
  #   for singer in @singers
  #     return true if singer == id_num
  #   end
  #   return false
  # end




end