# -*- coding: utf-8      -*-
require 'test/unit'
require_relative '../src/dir-repository'

class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_generator = DirRepository.new("Prog0", "Ex", 1, 13)
    assert_equal "Prog0", dir_generator.dir_name
    assert_equal "Ex", dir_generator.header
    assert_equal 1, dir_generator.format
    assert_equal 13,dir_generator.max
  end

  def test_create_repository
    dir_repository = DirRepository.new("Prog0", "Ex", )
    # mapメソッドを使うともっと楽に書けるぞ
    expected = ["Ex01", "Ex02", "Ex03", "Ex04", "Ex05"]
      .map{|name| Directory.new(name)}
    assert_equal expected, dir_generator.create_directories
  end
end
