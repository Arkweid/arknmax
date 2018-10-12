# frozen_string_literal: true

require 'algorithms'

module Arknmax
  # :nodoc:
  class Heap
    attr_reader :data_structure, :size_limit, :io

    def initialize(size_limit, io: STDOUT)
      @size_limit = size_limit
      @io = io
      @data_structure = Containers::MinHeap.new
    end

    def <<(num)
      return if limit_reached? && new_value_too_low?(num)

      data_structure.push(num)

      cut_extra_size! if overlimit?
    end

    def print_from_max
      to_a.reverse_each { |x| io.puts x }
    end

    def print_from_min
      data_structure.size.times { io.puts data_structure.next! }
    end

    def to_a
      array = Array.new(data_structure.size)
      data_structure.size.times { |i| array[i] = data_structure.next! }
      array
    end

    private

    def overlimit?
      data_structure.length > size_limit
    end

    def limit_reached?
      data_structure.length >= size_limit
    end

    def cut_extra_size!
      data_structure.pop
    end

    def new_value_too_low?(num)
      data_structure.min >= num
    end
  end
end
