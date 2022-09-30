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

  test "print diamond for get_char_index 3" do
    assert Diamond.get_char_index("A") == 0
    assert Diamond.get_char_index("D") == 3
    assert Diamond.get_char_index("E") == 4
    assert Diamond.get_char_index("Z") == 25
  end

  test "print diamond spaces" do
    assert Diamond.spaces_count("B") == 1
    assert Diamond.spaces_count("C") == 3
    assert Diamond.spaces_count("D") == 5
    assert Diamond.spaces_count("E") == 7
    assert Diamond.spaces_count("Z") == 49
  end
end
