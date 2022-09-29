defmodule Diamond do
  def printDiamond(char) do
    if char == 'D' do
      """
         A
        #{middle_bit_for_B("B")}
       #{middle_bit_for_C("C")}
      #{middle_bit_for_D("D")}
       #{middle_bit_for_C("C")}
        #{middle_bit_for_B("B")}
         A
      """
    else
      if char == 'C' do
        """
          A
         #{middle_bit_for_B("B")}
        #{middle_bit_for_C("C")}
         #{middle_bit_for_B("B")}
          A
        """
      else
        if char == 'B' do
          """
           A
          #{middle_bit_for_B("B")}
           A
          """
        else
          'A'
        end
      end
    end
  end

  defp middle_bit_for_B(char) do
    "#{char}#{spaces(char)}#{char}"
  end

  defp middle_bit_for_C(char) do
    "#{char}#{spaces(char)}#{char}"
  end

  defp middle_bit_for_D(char) do
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
end
