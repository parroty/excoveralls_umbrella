defmodule SubApp1Test do
  use ExUnit.Case
  doctest SubApp1

  test "plus" do
    assert SubApp1.plus(1, 1) == 2
  end
end
