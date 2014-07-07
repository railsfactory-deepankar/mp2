require '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase


 def test_one
   assert_equal "thirty three",Spell_digit.convert(33)
   assert_equal "three thousand four hundread seventy two",Spell_digit.convert(3472)
   assert_equal "five thousand",Spell_digit.convert(5000)
   assert_equal "nine thousand five hundread fifty five",Spell_digit.convert(9555)
   assert_equal "five hundread",Spell_digit.convert(500)
   assert_equal "six million seven hundread sixtynine thousand seven hundread fifty six",Spell_digit.convert(6769756)
   assert_equal "ninety thousand four hundread seventy two",Spell_digit.convert(90472)
   assert_equal "fifteen thousand four hundread seventy two",Spell_digit.convert(15472)


  end
end
