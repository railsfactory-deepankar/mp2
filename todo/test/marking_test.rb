require '../lib/marking.rb'

require 'test/unit'


class Testmark < Test::Unit::TestCase

def test_mark

assert_equal'wakeup #done
brush #undone
bath #undone
go to office #undone
come back to room #undone
', Marked.mark(0)
assert_equal'wakeup #done
brush #undone
bath #done
go to office #undone
come back to room #undone
', Marked.mark(2)
end
end

