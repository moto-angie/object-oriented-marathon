require_relative 'animal'

class Fox
  include Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def noise
    "Ring-ding-ding-ding-dingeringeding!"
  end
end
