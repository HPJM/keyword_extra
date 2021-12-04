defmodule KeywordExtraTest do
  use ExUnit.Case
  doctest KeywordExtra

  test "true when same flat list" do
    assert KeywordExtra.sorted_equal?([a: 2, b: 2], a: 2, b: 2)
  end

  test "true when empty lists" do
    assert KeywordExtra.sorted_equal?([], [])
  end

  test "false when lists unequal length" do
    refute KeywordExtra.sorted_equal?([a: 1], [])
    refute KeywordExtra.sorted_equal?([], b: 2)
  end

  test "false when lists unequal elements" do
    refute KeywordExtra.sorted_equal?([a: 1], b: 2)
  end

  test "true when nested same order" do
    assert KeywordExtra.sorted_equal?([a: [b: :c], d: :e], a: [b: :c], d: :e)
  end

  test "true when nested different order - top level" do
    assert KeywordExtra.sorted_equal?([d: :e, a: [b: :c]], a: [b: :c], d: :e)
  end

  test "true when nested different order - sub level" do
    fruit = [citrus: [:orange, :lemon]]
    veg = [colourful: [:peppers, :tomatoes], bland: [:potatoes]]
    kw1 = [food: [fruit: fruit, veg: veg]]
    kw2 = [food: [veg: veg, fruit: fruit]]

    assert KeywordExtra.sorted_equal?(kw1, kw2)
  end
end
