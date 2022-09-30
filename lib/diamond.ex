defmodule Diamond do
  def printDiamond(diamond_type) do
    if diamond_type == "A" do
      "A"
    else
      """
      #{leading_spaces(diamond_type, "A")}A
      #{loop(diamond_type)}#{leading_spaces(diamond_type, "A")}A
      """
    end
  end

  defp line_for_char(diamond_type, index) do
    "#{leading_spaces(diamond_type, char_for_index(index))}#{middle_bit(char_for_index(index))}"
  end

  defp middle_bit(char) do
    "#{char}#{spaces(char)}#{char}"
  end

  defp loop(diamond_type) do
    max = get_char_index(diamond_type)
    list = get_list(max)

    Enum.map(list, fn i ->
      "#{line_for_char(diamond_type, i)}\n"
    end)
  end

  defp get_list(max) do
    if max == 1 do
      [1]
    else
      Enum.to_list(1..max) ++ Enum.to_list((max - 1)..1)
    end
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
    <<code::utf8>> = char
    code - 65
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
