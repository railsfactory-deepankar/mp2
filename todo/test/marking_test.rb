require 'test/unit'


class Testmarking < Test::Unit::TestCase
def test_mark

assert_equal'wakeup #done',Marked.mark(1)
end
end

