defmodule DiamondTest do
  use ExUnit.Case
  doctest Diamond

  test "print diamond A" do
    assert Diamond.printDiamond("A") == "A"
  end

  test "print diamond B" do
    assert Diamond.printDiamond("B") == """
     A
    B B
     A
    """
  end

  test "print diamond C" do
    assert Diamond.printDiamond("C") == """
      A
     B B
    C   C
     B B
      A
    """
  end

  test "print diamond D" do
    assert Diamond.printDiamond("D") == """
       A
      B B
     C   C
    D     D
     C   C
      B B
       A
    """
  end

  test "print diamond E" do
    assert Diamond.printDiamond("E") == """
        A
       B B
      C   C
     D     D
    E       E
     D     D
      C   C
       B B
        A
    """
  end

  test "should return index for char" do
    assert Diamond.index_for_char("A") == 0
    assert Diamond.index_for_char("B") == 1
    assert Diamond.index_for_char("Y") == 24
    assert Diamond.index_for_char("Z") == 25
  end

  test "should return number of spaces required to print" do
    assert Diamond.spaces_count("B") == 1
    assert Diamond.spaces_count("C") == 3
    assert Diamond.spaces_count("D") == 5
    assert Diamond.spaces_count("E") == 7
    assert Diamond.spaces_count("Z") == 49
  end
end
