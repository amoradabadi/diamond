defmodule Diamond do
  def printDiamond(diamond_type) do
    if diamond_type == "D" do
      """
      #{leading_spaces(diamond_type, "A")}A
      #{leading_spaces(diamond_type, "B")}#{middle_bit("B")}
      #{leading_spaces(diamond_type, "C")}#{middle_bit("C")}
      #{leading_spaces(diamond_type, "D")}#{middle_bit("D")}
      #{leading_spaces(diamond_type, "C")}#{middle_bit("C")}
      #{leading_spaces(diamond_type, "B")}#{middle_bit("B")}
      #{leading_spaces(diamond_type, "A")}A
      """
    else
      if diamond_type == "C" do
        """
        #{leading_spaces(diamond_type, "A")}A
        #{leading_spaces(diamond_type, "B")}#{middle_bit("B")}
        #{leading_spaces(diamond_type, "C")}#{middle_bit("C")}
        #{leading_spaces(diamond_type, "B")}#{middle_bit("B")}
        #{leading_spaces(diamond_type, "A")}A
        """
      else
        if diamond_type == "B" do
          """
          #{leading_spaces(diamond_type, "A")}A
          #{leading_spaces(diamond_type, "B")}#{middle_bit("B")}
          #{leading_spaces(diamond_type, "A")}A
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

  defp leading_spaces(diamond_type, char) do
    String.duplicate(" ", get_char_index(diamond_type) - get_char_index(char))
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
