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
           A
          #{middle_bit("B")}
           A
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
    map = %{
      "A" => 3,
      "B" => 2,
      "C" => 1,
      "D" => 0
    }

    String.duplicate(" ", map[char])
  end

  defp leading_spaces_C(char) do
    map = %{
      "A" => 2,
      "B" => 1,
      "C" => 0
    }

    String.duplicate(" ", map[char])
  end
end
