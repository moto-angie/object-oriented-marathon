require_relative 'animal'

class Gorilla
  include Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def noise
    return "#{self.name} got a bad feeling about this..."
  end
end
