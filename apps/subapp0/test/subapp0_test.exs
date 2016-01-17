defmodule SubApp0Test do
  use ExUnit.Case
  doctest SubApp0

  test "plus of SubApp0" do
    assert SubApp0.plus(1, 1) == 2
  end

  test "minus of SubApp0" do
    assert SubApp0.minus(2, 1) == 1
  end

  test "minus of SubApp1" do
    assert SubApp1.minus(2, 1) == 1
  end
end
