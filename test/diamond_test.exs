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

  test "print diamond C" do
    assert Diamond.printDiamond('C') == """
      A
     B B
    C   C
     B B
      A
    """
  end

  test "print diamond D" do
    assert Diamond.printDiamond('D') == """
       A
      B B
     C   C
    D     D
     C   C
      B B
       A
    """
  end
end
