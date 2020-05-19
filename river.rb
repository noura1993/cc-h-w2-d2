class River
    attr_reader :name

    def initialize(name)
        @name = name
        @fish = []
    end

    def count_fish()
        return @fish.count()
    end

    def add_fish(fish)
        @fish.push(fish)
    end

end