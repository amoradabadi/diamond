defmodule Diamond do
  def printDiamond(diamond_type) when diamond_type == "A", do: "A"

  def printDiamond(diamond_type) do
    "#{tip(diamond_type)}\n#{body(diamond_type)}#{tip(diamond_type)}\n"
  end

  defp tip(diamond_type) do
    "#{leading_spaces(diamond_type, "A")}A"
  end

  defp line_for_char(diamond_type, index) do
    "#{leading_spaces(diamond_type, char_for_index(index))}#{middle_bit(char_for_index(index))}\n"
  end

  defp middle_bit(char) do
    "#{char}#{spaces(char)}#{char}"
  end

  defp body(diamond_type) do
    index_for_char(diamond_type)
    |> get_list
    |> Enum.map(fn i ->
      "#{line_for_char(diamond_type, i)}"
    end)
  end

  defp get_list(max) do
    (max == 1 && [1]) || Enum.to_list(1..max) ++ Enum.to_list((max - 1)..1)
  end

  def spaces(char) do
    String.duplicate(" ", spaces_count(char))
  end

  def spaces_count(char) do
    index_for_char(char) * 2 - 1
  end

  defp leading_spaces(diamond_type, char) do
    String.duplicate(" ", index_for_char(diamond_type) - index_for_char(char))
  end

  def index_for_char(char) do
    <<code::utf8>> = char
    code - 65
  end

  def char_for_index(index) do
    <<index + 65::utf8>>
  end
end
