require '../lib/delete.rb'
require '../lib/storage_load.rb'
require '../lib/marking.rb'
require '../lib/status.rb'
require '../lib/storage_dump.rb'
require 'test/unit'


class Teststorage < Test::Unit::TestCase
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



end 



