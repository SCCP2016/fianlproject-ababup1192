class Directory
  attr_reader :name, :path
  def initialize(name, path)
    @name = name
    @path = path
  end

  def ==(target)
    @name == target.name && @path == target.path
  end

  def make
    Dir.mkdir("#{@path}/#{@name}" , 0700)
  end
end
