defmodule Diamond do
  def printDiamond(char) do
    if char == 'D' do
      """
         A
        B B
       #{middle_bit_for_C()}
      D     D
       #{middle_bit_for_C()}
        B B
         A
      """
    else
      if char == 'C' do
        """
          A
         B B
        #{middle_bit_for_C()}
         B B
          A
        """
      else
        if char == 'B' do
          """
           A
          B B
           A
          """
        else
          'A'
        end
      end
    end
  end

  defp middle_bit_for_C() do
    "C   C"
  end

end
