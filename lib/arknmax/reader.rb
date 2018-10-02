# frozen_string_literal: true

module Arknmax
  # :nodoc:
  class Reader
    DIGIT = /\d/
    DIGIT_LINE = /\d+/

    attr_reader :io, :size_limit, :max_digits_line
    attr_accessor :container

    def initialize(size_limit, io: STDIN, max_digits_line: 1000)
      @size_limit = size_limit
      @io = io
      @max_digits_line = max_digits_line
      @container = Arknmax::Heap.new(size_limit)
    end

    def perform
      while (line = io.read(max_digits_line))
        finish_digits_line!(line) if end_with_num_char?(line)

        line.scan(DIGIT_LINE) { |n| container << n.to_i }
      end

      container
    end

    private

    def end_with_num_char?(string)
      !(string[-1] =~ DIGIT).nil?
    end

    def finish_digits_line!(string)
      return if string.nil?

      string << io.readbyte while end_with_num_char?(string) && !io.eof?
    end
  end
end
