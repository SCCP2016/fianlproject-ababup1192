# -*- coding: utf-8 -*-
require_relative '../src/directory'

class DirRepository
  # 仕様を見てコードを追加
  attr_reader :command, :path

  # 仕様を見てコードを追加
  def initialize(command, cwd)
    @command = command
    @path = "#{cwd}/#{command.dir_name}"
  end

  def create_directories
    (1..@command.max).map{|n| Directory.new(@command.header +
                                            sprintf("%0#{@command.format}d", n), @path)}
  end

  def make
    Dir.mkdir(@path, 0700)
    create_directories.each{|dir| dir.make}
  end
end


