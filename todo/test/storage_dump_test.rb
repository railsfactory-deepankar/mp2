
require '../lib/storage_dump.rb'
require 'test/unit'


class Teststoragedump < Test::Unit::TestCase
def test_one
  
   assert_equal 'wakeup #undone
',Storage.dump("wakeup #undone")
    assert_equal 'wakeup #undone
brush #done
',Storage.dump("brush #done")


    assert_equal 'wakeup #undone
brush #done
bath #undone
',Storage.dump("bath #undone")

     assert_equal 'wakeup #undone
brush #done
bath #undone
go to office #undone
',Storage.dump("go to office #undone")
     assert_equal 'wakeup #undone
brush #done
bath #undone
go to office #undone
come back to room #done
',Storage.dump("come back to room #done")
end
end

