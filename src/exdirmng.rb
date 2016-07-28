# -*- coding: utf-8 -*-
require_relative 'command-parser'
require_relative 'dir-repository'
class Main
  def initialize
    # コードを追加
    parser = CommandParser.new(ARGV)
    repository = DirRepository.new(parser.parse)
    repository.make
  end
end

Main.new
