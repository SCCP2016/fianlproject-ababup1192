# -*- coding: utf-8 -*-
require 'test/unit'
require_relative '../src/command-parser'
require_relative '../src/command'

class CommandParserTest < Test::Unit::TestCase
  def test_parse
    parser = CommandParser
      .new(["generate", "Prog0", "-h", "Ex", "-f", "2", "-m", "13"])
    expected = Command.new("generate", "Prog0", "Ex", 2, 13)
    p  parser.parse
    assert_equal expected, parser.parse
  end
end
