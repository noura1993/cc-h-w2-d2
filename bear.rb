class Bear 
    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def count_fish_in_stomach()
        return @stomach.count()
    end

    def eat_fish_from_a_river(river)
        @stomach.push(river.supply_fish())
    end

end