defmodule DiamondTest do
  use ExUnit.Case
  doctest Diamond

  test "print diamond A" do
    assert Diamond.printDiamond('A') == 'A'
  end

  test "print diamond B" do
    assert Diamond.printDiamond('B') == """
     A
    B B
     A
    """
  end
end
