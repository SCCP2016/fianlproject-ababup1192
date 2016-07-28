# -*- coding: utf-8      -*-
require 'test/unit'
require_relative '../src/directory'

class DirectoryTest < Test::Unit::TestCase
  def test_constructor
    dir = Directory.new("Ex1", Dir.pwd)
    assert_equal "Ex1", dir.name
    assert_equal Dir.pwd, dir.path
  end
end
