require '../lib/storage_load.rb'
require '../lib/marking.rb'
require '../lib/status.rb'
require '../lib/storage_dump.rb'
require 'test/unit'


class Teststoragedump < Test::Unit::TestCase
def test_dump
  
   assert_equal 'wakeup #undone
',Storage.dump("wakeup #undone")
    assert_equal 'wakeup #undone
brush #undone
',Storage.dump("brush #undone")


    assert_equal 'wakeup #undone
brush #undone
bath #undone
',Storage.dump("bath #undone")

     assert_equal 'wakeup #undone
brush #undone
bath #undone
go to office #undone
',Storage.dump("go to office #undone")
     assert_equal 'wakeup #undone
brush #undone
bath #undone
go to office #undone
come back to room #undone
',Storage.dump("come back to room #undone")
end

def test_load
	
	assert_equal 'wakeup #undone
brush #undone
bath #undone
go to office #undone
come back to room #undone',Load.load
end

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


def test_one      
     assert_equal 'brush #undone go to office #undone come back to room #undone',Status.pend
end
end

