require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Amazon")
        @fish = Fish.new("Nemo")
    end

    def test_river_name()
        assert_equal("Amazon", @river.name)
    end

    def test_count_fish()
        assert_equal(0, @river.count_fish)
    end

    def test_add_fish()
        @river.add_fish(@fish)
        assert_equal(1, @river.count_fish)
    end

end
