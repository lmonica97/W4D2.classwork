require_relative "employee"

class Manager < Employee
    attr_reader :managers
    def initialize(name, title, salary, boss = nil) #take managers
        @managers = Hash.new {|hash, manager| hash[manager] = []}
        @name = name
        @boss = boss
    end
    
    def placement(employee)
        if @boss == nil #if the big boos
           moneys = @managers.values.flatten.sum #sum of everyones salary
        end

        if @managers.has_key?(employee.boss)
            @managers[employee.boss] << employee.salary
        else
            @managers[employee.boss] << employee.salary
        end

    end



end


