# -*- coding: utf-8      -*-
require 'test/unit'
require_relative '../src/dir-repository'
require_relative '../src/command'

class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_repository = DirRepository.new(Command.new("generate", "Prog0", "Ex", 2, 13), Dir.pwd)
    assert_equal "Prog0", dir_repository.command.dir_name
    assert_equal "Ex", dir_repository.command.header
    assert_equal 2, dir_repository.command.format
    assert_equal 13,dir_repository.command.max
    assert_equal "#{Dir.pwd}/Prog0",dir_repository.path
  end

  def test_create_repository
    dir_repository = DirRepository.new(Command.new("generate", "Prog0", "Ex", 2, 5), Dir.pwd)
    # mapメソッドを使うともっと楽に書けるぞ
    expected = ["Ex01", "Ex02", "Ex03", "Ex04", "Ex05"]
    .map{|name| Directory.new(name, "#{Dir.pwd}/Prog0")}
    assert_equal expected, dir_repository.create_directories
  end
end
