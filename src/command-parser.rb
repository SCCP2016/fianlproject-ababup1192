# -*- coding: utf-8 -*-

require_relative 'command'

class CommandParser
  attr_reader :argv
  def initialize(argv)
    @argv = argv
  end

  # コードを追加
  def parse
    options = @argv.drop(2)
    options_hash = Hash[*options]

    Command.new(@argv[0], @argv[1], 
                options_hash["-h"].nil? ? "ex" : options_hash["-h"] ,
                options_hash["-f"].nil? ? 1 : options_hash["-f"].to_i ,
                options_hash["-m"].nil? ? 13 : options_hash["-m"].to_i
                )
  end
end
