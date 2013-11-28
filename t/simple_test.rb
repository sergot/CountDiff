require_relative '../CountDiff'
require 'test/unit'

class SimpleTest < Test::Unit::TestCase
  def test_simple_order
    assert_equal(0, CountDiff.new('', '').count_diff_order)
    assert_equal(0, CountDiff.new('aa', 'aa').count_diff_order)

    assert_equal(1, CountDiff.new('ba', 'aa').count_diff_order)

    assert_equal(2, CountDiff.new('ab', 'ba').count_diff_order)
  end

  def test_simple
    assert_equal(0, CountDiff.new('', '').count_diff)
    assert_equal(0, CountDiff.new('aa', 'aa').count_diff)
    assert_equal(0, CountDiff.new('ab', 'ba').count_diff)

    assert_equal(1, CountDiff.new('ab', 'bb').count_diff)

    assert_equal(2, CountDiff.new('ade', 'abc').count_diff)
  end

  def test_typecheck
    assert_raise(RuntimeError) { CountDiff.new(1,1) }
  end
end