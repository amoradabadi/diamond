defmodule DiamondTest do
  use ExUnit.Case
  doctest Diamond

  test "print diamond" do
    assert Diamond.printDiamond('A') == 'A'
  end
end
