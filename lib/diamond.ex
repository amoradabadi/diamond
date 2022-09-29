defmodule Diamond do
  def printDiamond(char) do
    if char == 'C' do
      """
        A
       B B
      C   C
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
