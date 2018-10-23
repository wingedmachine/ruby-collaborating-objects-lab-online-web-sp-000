class Song
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def new_by_filename(filename)
    Song.new(filename)
  end
end
