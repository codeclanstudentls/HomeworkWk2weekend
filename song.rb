class Song

attr_reader :artist, :title

  def initialize(artist, title)
    @artist = artist
    @title = title
  end
end


def song_has_artist(artist)
  return @artist
end


def song_has_title(title)
  return @title
end
