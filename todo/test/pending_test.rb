
require '../lib/status.rb'

require 'test/unit'


class Testpending < Test::Unit::TestCase
def test_pending      
     assert_equal 'brush #undone go to office #undone come back to room #undone',Status.pend
end
end
