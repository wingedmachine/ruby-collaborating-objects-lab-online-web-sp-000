class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.sub(".mp3", "").split(" - ")
    binding.pry
    new_song = Song.new(data[1])
    new_song.artist = Artist.find_or_create_by_name(data[0])
    new_song.genre = data[2]
    new_song
  end
end
