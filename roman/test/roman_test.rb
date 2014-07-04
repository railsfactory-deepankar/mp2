require '../lib/roman'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal 'I',Roman.convert(1)
   assert_equal 'II',Roman.convert(2)
   assert_equal 'III',Roman.convert(3)
   assert_equal 'XXV',Roman.convert(25)
   assert_equal 'XXXVII',Roman.convert(37)
   assert_equal 'XXXXVI',Roman.convert(46)
   assert_equal 'L',Roman.convert(50)
   assert_equal 'LXXXVII',Roman.convert(87)
   assert_equal 'C',Roman.convert(100)
   assert_equal 'CXXV',Roman.convert(125)
   assert_equal 'CCCLXXXXVII',Roman.convert(397)
   assert_equal 'DCCLXXXXIX',Roman.convert(799)
   assert_equal 'M',Roman.convert(1000)
   assert_equal 'IX',Roman.convert(9)
   assert_equal 'IV',Roman.convert(4) 



   

  end



end  

