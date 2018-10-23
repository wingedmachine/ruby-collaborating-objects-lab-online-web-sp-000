class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{@path}/*.mp3"].map { |file| file.sub("#{@path}/", "") }
  end

  def import

  end
end
