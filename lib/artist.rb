class Artist
attr_accessor :name, :songs

  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    @@all.detect { |artist| artist.name == name}
  end

  def self.create_by_name(name)
    Artist.new(name)
  end

  def self.find_or_create_by_name(name)
    self.create_by_name(name) if !self.find_by_name(name)
  end
end
