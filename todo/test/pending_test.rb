require '../lib/status.rb'
require 'test/unit'
class Teststorage < Test::Unit::TestCase
def test_one      
     assert_equal 'wakeup #undone bath #undone go to office #undone',Status.pend
end
end

