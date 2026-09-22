module Canine
  def bark
    puts "woof!"
  end
end

class Doggy
  include Canine
end

Doggy.new.bark

class Numbah
  include Enumerable, Comparable
  attr_accessor :numbah

  def initialize(n)
    @n = n
  end

  def each(&block)
    block.call @n
  end

  def <=>(other)
    @n <=> other
  end
end
