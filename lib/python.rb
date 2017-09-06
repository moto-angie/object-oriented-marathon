require_relative 'animal'

class Python
  include Animal
  include Reptile
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def noise
    "SSSSssssss..."
  end
end
