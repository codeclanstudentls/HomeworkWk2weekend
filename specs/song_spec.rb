require('minitest/autorun')
require('minitest/rg')
require_relative('../song')


class TestSong < Minitest::Test

  def setup
    @song = Song.new('Massive Attack','Unfinished Symphony')
  end


  def test_song_has_artist
    assert_equal('Massive Attack', @song.artist)
  end

  def test_song_has_title
    assert_equal('Unfinished Symphony', @song.title)
  end


  
end