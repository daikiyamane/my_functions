defmodule MyFunctionsTest do
  use ExUnit.Case
  doctest MyFunctions

  test "fact 5" do
    assert MyFunctions.fact(5) == 120
  end

  test "fib 10" do
    assert MyFunctions.fib(10) == 55
  end

  test "reverse [1, 2, 3]" do
    assert MyFunctions.reverse([1, 2, 3]) == [3, 2, 1]
  end

  test "map([1,2,3], fn x -> x * x end)" do
    assert MyFunctions.map([1, 2, 3], fn x -> x * x end)
  end

  test "filter([1, 2, 3], fn x -> rem(x, 2) == 0 end)" do
    assert MyFunctions.filter([1, 2, 3], fn x -> rem(x, 2) == 0 end)
  end
end
