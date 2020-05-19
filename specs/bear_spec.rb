require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")
    end

    def test_bear_name_and_type()
        assert_equal("Yogi", @bear.name())
        assert_equal("Grizzly", @bear.type())
    end


end