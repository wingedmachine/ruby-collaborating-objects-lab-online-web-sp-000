class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    flies = Dir[@path + "/*.mp3"]
    binding.pry
  end
end
