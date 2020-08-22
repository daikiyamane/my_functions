defmodule MyFunctionsTest do
  use ExUnit.Case
  doctest MyFunctions

  test "greets the world" do
    assert MyFunctions.hello() == :world
  end
end
