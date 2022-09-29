defmodule Diamond do
  def printDiamond(char) do
    if char == 'D' do
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
      if char == 'C' do
        """
        #{leading_spaces_C("A")}A
        #{leading_spaces_C("B")}#{middle_bit("B")}
        #{leading_spaces_C("C")}#{middle_bit("C")}
        #{leading_spaces_C("B")}#{middle_bit("B")}
        #{leading_spaces_C("A")}A
        """
      else
        if char == 'B' do
          """
          #{leading_spaces_B("A")}A
          #{leading_spaces_B("B")}#{middle_bit("B")}
          #{leading_spaces_B("A")}A
          """
        else
          'A'
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
    char_index = 3
    map = %{
      "A" => char_index - 0,
      "B" => char_index - 1,
      "C" => char_index - 2,
      "D" => char_index - 3
    }

    String.duplicate(" ", map[char])
  end

  defp leading_spaces_C(char) do
    char_index = 2
    map = %{
      "A" => char_index - 0,
      "B" => char_index - 1,
      "C" => char_index - 2
    }

    String.duplicate(" ", map[char])
  end

  defp leading_spaces_B(char) do
      char_index = 1
      map = %{
      "A" => char_index - 0,
      "B" => char_index - 1
    }

    String.duplicate(" ", map[char])
  end
end
