class Directory
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def ==(target)
    @name == target.name
  end

  def make
    Dir.mkdir(@name , 0700)
  end
end
