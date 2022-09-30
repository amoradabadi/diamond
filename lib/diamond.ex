defmodule Diamond do
  def printDiamond(diamond_type) do
    if diamond_type == "D" do
      """
      #{leading_spaces(diamond_type, "A")}A
      #{line_for_char(diamond_type, 1)}
      #{line_for_char(diamond_type, 2)}
      #{line_for_char(diamond_type, 3)}
      #{line_for_char(diamond_type, 2)}
      #{line_for_char(diamond_type, 1)}
      #{leading_spaces(diamond_type, "A")}A
      """
    else
      if diamond_type == "C" do
        """
        #{leading_spaces(diamond_type, "A")}A
        #{line_for_char(diamond_type, 1)}
        #{line_for_char(diamond_type, 2)}
        #{line_for_char(diamond_type, 1)}
        #{leading_spaces(diamond_type, "A")}A
        """
      else
        if diamond_type == "B" do
          """
          #{leading_spaces(diamond_type, "A")}A
          #{line_for_char(diamond_type, 1)}
          #{leading_spaces(diamond_type, "A")}A
          """
        else
          "A"
        end
      end
    end
  end

  defp line_for_char(diamond_type, index) do
    "#{leading_spaces(diamond_type, char_for_index(index))}#{middle_bit(char_for_index(index))}"
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

  def char_for_index(index) do
    %{
      0 => "A",
      1 => "B",
      2 => "C",
      3 => "D"
    }[index]
  end
end
