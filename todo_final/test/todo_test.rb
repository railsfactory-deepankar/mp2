require '../lib/todo.rb'

require 'test/unit'

class Testtodo < Test::Unit::TestCase

def setup
@t = Todolist.new("deep.txt")
end

def teardown
@t=nil
end

def test_aaempty
@t.empty
assert_equal 0, @t.pending.size
assert_equal 0, @t.list.size
assert_equal 0, @t.completed.size
end

def test_add1
@t.empty
@t.add("open")
assert_equal 1, @t.pending.size
assert_equal 1, @t.list.size
assert_equal 0, @t.completed.size
end

def test_add2
@t.empty
@t.add("open")
@t.add("save")
assert_equal 2, @t.pending.size
assert_equal 2, @t.list.size
assert_equal 0, @t.completed.size
end

def test_add3
@t.empty
@t.add("open")
@t.add("save")
@t.add("edit")
assert_equal 3, @t.pending.size
assert_equal 3, @t.list.size
assert_equal 0, @t.completed.size
end

def test_add4
@t.empty
@t.add("open")
@t.add("save")
@t.add("edit")
@t.add("select")
assert_equal 4, @t.pending.size
assert_equal 4, @t.list.size
assert_equal 0, @t.completed.size
end

def test_complete
@t.empty
@t.add("open")
@t.add("save")
@t.add("edit")
@t.add("select")

assert_equal 4, @t.pending.size
assert_equal 4, @t.list.size
assert_equal 0, @t.completed.size

@t.complete(1)

assert_equal 3, @t.pending.size
assert_equal 4, @t.list.size
assert_equal 1, @t.completed.size
end

def test_delete
@t.empty
@t.add("open")
@t.add("save")
@t.complete(1)
assert_equal 1, @t.pending.size
assert_equal 2, @t.list.size
assert_equal 1, @t.completed.size

@t.delete(1)

assert_equal 1, @t.pending.size
assert_equal 1, @t.list.size
assert_equal 0, @t.completed.size

end

def test_modify
@t.empty
@t.add("open")
@t.add("save")
assert_equal 2, @t.pending.size
assert_equal 2, @t.list.size
assert_equal 0, @t.completed.size

@t.modify(1,"close")

assert_equal 2, @t.pending.size
assert_equal 2, @t.list.size
assert_equal 0, @t.completed.size

end

def test_show_pending
@t.empty
@t.add("open")
@t.add("save")
assert_equal 2, @t.pending.size

assert_equal "open", @t.show_pending(1)
end

def test_show_completed
@t.empty
@t.add("open")
@t.add("save")
assert_equal 2, @t.pending.size
assert_equal 2, @t.list.size
assert_equal 0, @t.completed.size
#action

@t.complete(1)
assert_equal 1, @t.pending.size
assert_equal 2, @t.list.size
assert_equal 1, @t.completed.size
assert_equal "open" , @t.show_completed(1)


end
end
