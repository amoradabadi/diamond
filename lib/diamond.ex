defmodule Diamond do
  def printDiamond(char) do
    if char == 'D' do
      """
         A
        #{middle_bit_for_B()}
       #{middle_bit_for_C()}
      #{middle_bit_for_D()}
       #{middle_bit_for_C()}
        #{middle_bit_for_B()}
         A
      """
    else
      if char == 'C' do
        """
          A
         #{middle_bit_for_B()}
        #{middle_bit_for_C()}
         #{middle_bit_for_B()}
          A
        """
      else
        if char == 'B' do
          """
           A
          #{middle_bit_for_B()}
           A
          """
        else
          'A'
        end
      end
    end
  end

  defp middle_bit_for_B() do
    "B#{spaces(1)}B"
  end

  defp middle_bit_for_C() do
    "C#{spaces(3)}C"
  end

  defp middle_bit_for_D() do
    "D#{spaces(5)}D"
  end

  defp spaces(n) do
    String.duplicate(" ", n)
  end

end
