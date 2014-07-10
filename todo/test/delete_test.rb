require '../lib/delete.rb'
require 'test/unit'


class Testdelete < Test::Unit::TestCase
def test_del
     assert_equal 'wakeup #done
brush #undone
bath #done
come back to room #undone
',Del.delete(3)
end
end
