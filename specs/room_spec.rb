require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')



class TestRoom < Minitest::Test

  def setup
    @singer1 = Guest.new('Alice', 001)
    @singer2 = Guest.new('Tom', 002)
    @singer3 = Guest.new('Helen', 003)

    #singers = [@singer1, @singer2, @singer3]
    @room = Room.new('Blue Room')
    #@id = Room.new(001)
    @current_song = Song.new('Massive Attack','Unfinished Symphony')
    #@id_num = Guest.new(001)
  end


  def test_check_in_guest
    @room.check_in_guest(@singer1)
    assert_equal(1, @room.singers.length)
  end


  def test_check_out_guest
    @room.check_out_guest(@singer1)
    assert_equal(0, @room.singers.length)
  end


  def test_size_of_room
    @room.check_in_guest(@singer1)
    @room.check_in_guest(@singer2)
    assert_equal(2, @room.size_of_room)
  end


  # def test_room_is_full
  #   assert_equal(, @singers.length(10))
  # end

  def test_add_song_to_room
    @room.add_song_to_room(@current_song)
    assert_equal(@artist, @title)
  end


  # def test_find_guest_by_id
  #  @singers = ["Alice", 001, "Tom", 002, "Helen", 003]
  #  result = find_guest(001, )

  #  assert_equal(true, result)
  # end
# def test_room_has_singer # see if a room array has a matching guest id could use '.include?' or do I just use .delete(3) eg

#or should I use a .find block method?
# end

#def test_room_is_full # use if .length of array is > 10 room is full

#  assert_equal(@room.length < 10)
#end

end
