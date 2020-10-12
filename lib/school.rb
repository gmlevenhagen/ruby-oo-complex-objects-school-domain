class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
       if roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster.detect do |key, value|
            if key == grade
                return value
            end
        end
    end
    

    def sort
        roster.each do |key, value|
            value.sort!
        end
        roster.sort.to_h
    end

   
end








    
end
