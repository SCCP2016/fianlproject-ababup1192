# -*- coding: utf-8      -*-
require 'test/unit'
require_relative '../src/command'

class CommandTest < Test::Unit::TestCase
  def test_constructor
    command = Command.new("generate", "Prog0", "Ex", 2, 13)
    assert_equal "generate", command.mode
    assert_equal "Prog0", command.dir_name
    assert_equal "Ex", command.header
    assert_equal 2, command.format
    assert_equal 13, command.max
  end
end
