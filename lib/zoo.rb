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
end
