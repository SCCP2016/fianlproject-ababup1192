# -*- coding: utf-8 -*-
require_relative '../src/directory'

class DirRepository
  # 仕様を見てコードを追加
  attr_reader :dir_name, :header, :format, :max

  # 仕様を見てコードを追加
  def initialize(dir_name, header, format, max)
    @dir_name = dir_name
    @header = header
    @format = format
    @max = max
  end

  def create_directories
    [1..@max].map{|n| Directory.new()}
  end

  def make
  end
end
