
require '../lib/delete.rb'
require '../lib/storage_load.rb'
require '../lib/marking.rb'
require '../lib/status.rb'
require '../lib/storage_dump.rb'
require 'test/unit'

class Testload < Test::Unit::TestCase 
def test_load
	
	assert_equal 'wakeup #undone
brush #undone
bath #undone
go to office #undone
come back to room #undone',Load.load
end
end
