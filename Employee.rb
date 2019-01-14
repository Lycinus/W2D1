class Employee
  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    if self.class == Manager
      total_salaries = []
      @employees.each do |el|
        total_salaries << el.salary
      end
      total_salaries.reduce(:+) * multiplier
    else
      @salary * multiplier
    end
  end

end

class Manager < Employee 

  attr_reader :employees

  def initialize(name, title, salary, boss)
    super
    @employees = []
  end

end