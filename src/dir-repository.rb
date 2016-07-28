# -*- coding: utf-8 -*-
require_relative '../src/directory'

class DirRepository
  # 仕様を見てコードを追加
  attr_reader :command

  # 仕様を見てコードを追加
  def initialize(command)
    @command = command
  end

  def create_directories
    (1..@command.max).map{|n| Directory.new(@command.header + 
                                            sprintf("%0#{@command.format}d", n))}
  end

  def make
    create_directories.each{|dir| dir.make}
  end
end


# dir_repository = DirRepository.new("Prog0", "Ex", 2, 5)
# dir_repository.make
