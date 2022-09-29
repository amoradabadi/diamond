defmodule Diamond do
  def printDiamond(diamond_type) do
    if diamond_type == "D" do
      """
      #{leading_spaces_D("A")}A
      #{leading_spaces_D("B")}#{middle_bit("B")}
      #{leading_spaces_D("C")}#{middle_bit("C")}
      #{leading_spaces_D("D")}#{middle_bit("D")}
      #{leading_spaces_D("C")}#{middle_bit("C")}
      #{leading_spaces_D("B")}#{middle_bit("B")}
      #{leading_spaces_D("A")}A
      """
    else
      if diamond_type == "C" do
        """
        #{leading_spaces_C("A")}A
        #{leading_spaces_C("B")}#{middle_bit("B")}
        #{leading_spaces_C("C")}#{middle_bit("C")}
        #{leading_spaces_C("B")}#{middle_bit("B")}
        #{leading_spaces_C("A")}A
        """
      else
        if diamond_type == "B" do
          """
          #{leading_spaces_B("A")}A
          #{leading_spaces_B("B")}#{middle_bit("B")}
          #{leading_spaces_B("A")}A
          """
        else
          "A"
        end
      end
    end
  end

  defp middle_bit(char) do
    "#{char}#{spaces(char)}#{char}"
  end

  defp spaces(char) do
    map = %{
      "B" => 1,
      "C" => 3,
      "D" => 5
    }

    String.duplicate(" ", map[char])
  end

  defp leading_spaces_D(char) do
    String.duplicate(" ", get_char_index("D") - get_char_index(char))
  end

  defp leading_spaces_C(char) do
    String.duplicate(" ", get_char_index("C") - get_char_index(char))
  end

  defp leading_spaces_B(char) do
    String.duplicate(" ", get_char_index("B") - get_char_index(char))
  end

  def get_char_index(char) do
    %{
      "A" => 0,
      "B" => 1,
      "C" => 2,
      "D" => 3
    }[char]
  end
end
