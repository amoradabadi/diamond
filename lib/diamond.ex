defmodule Diamond do
  def printDiamond(char) do
    if char == 'D' do
      """
         A
        #{middle_bit_for_B("B")}
       #{middle_bit_for_C()}
      #{middle_bit_for_D()}
       #{middle_bit_for_C()}
        #{middle_bit_for_B("B")}
         A
      """
    else
      if char == 'C' do
        """
          A
         #{middle_bit_for_B("B")}
        #{middle_bit_for_C()}
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
    "#{char}#{spaces(1)}#{char}"
  end

  defp middle_bit_for_C() do
    char = "C"
    "#{char}#{spaces(3)}#{char}"
  end

  defp middle_bit_for_D() do
    char = "D"
    "#{char}#{spaces(5)}#{char}"
  end

  defp spaces(n) do
    String.duplicate(" ", n)
  end

end
