require 'pry'

class ZooAtCapacity < StandardError
end

class Zoo
  attr_reader :name, :open_date, :closing_date, :cages, :employees

  def initialize(name, open_date, closing_date)
    @name = name
    @open_date = open_date
    @closing_date = closing_date
    @cages = []
    @employees = []

    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    if date < open_date
      false
    elsif date > closing_date
      false
    else
      true
    end
  end

  def add_animal(incoming_animal)
    if @cages.all? { |cage| cage.animal != nil}
      raise ZooAtCapacity
    else
      @cages.each do |cage|
        if cage.animal == nil
          cage.animal = incoming_animal
          break
        end
      end
    end
  end

  def visit
    visit_string = ""

    @employees.each do |employee|
      visit_string += "#{employee.name} waved hello!\n"
    end

    @cages.each do |cage|
      if cage.animal != nil
        visit_string += "#{cage.animal.speak}\n"
      end
    end

    visit_string
  end
end
