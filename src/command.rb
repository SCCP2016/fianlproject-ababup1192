class Command
  attr_reader :mode, :dir_name, :header, :format, :max
  def initialize(mode, dir_name, header, format, max)
    @mode = mode
    @dir_name = dir_name
    @header = header
    @format = format
    @max = max
  end
  
  def ==(target)
    @mode == target.mode &&
    @dir_name == target.dir_name &&
    @header == target.header &&
    @format == target.format &&
    @max == target.max
  end
end
