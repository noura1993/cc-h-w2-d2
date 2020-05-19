require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")
        @river = River.new("Amazon")
        @fish1 = Fish.new("Dory")
        @fish2 = Fish.new("Nemo")
        @river.add_fish(@fish1)
        @river.add_fish(@fish2)
    end

    def test_bear_name_and_type()
        assert_equal("Yogi", @bear.name())
        assert_equal("Grizzly", @bear.type())
    end

    def test_eat_fish_from_a_river()
        @bear.eat_fish_from_a_river(@river)
        assert_equal(1, @river.count_fish())
        assert_equal(1, @bear.count_fish_in_stomach())
    end

end