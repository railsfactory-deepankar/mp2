require '../lib/storage_load.rb'
require 'test/unit'


class Teststorageload < Test::Unit::TestCase

def test_load
	
	assert_equal 'wakeup #undone
brush #done
bath #undone
go to office #undone
come back to room #done',Load.load
end
end

