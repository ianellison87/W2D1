class Employee

  attr_reader :salary

  def initialize(name, title, salary, boss=nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss

    if boss 
      @boss = boss
      @boss.employees << self
    end

  end

  def bonus(multiplier)
    @salary * multiplier
  end

end

class Manager < Employee 

  attr_reader :boss, :employees

    def initialize(name, title, salary, boss)
      super(name, title, salary, boss)
      @employees = []
    
    end

    def bonus(multiplier)
      multiplier * @employees.inject(0) { |bonus, employee| bonus + employee.salary}
    end

    
end

pp ned = Manager.new("Ned", "Founder", 1000000, nil)
puts "------------"
pp darren = Manager.new('Darren', "TA Manager", 78000, ned)
puts "------------"

# p shawna = Employee.new('Shawna', 'TA', 12000, darren)
# p david = Employee.new('David', 'TA', 10000, darren)
pp ned
