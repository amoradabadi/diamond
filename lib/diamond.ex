defmodule Diamond do
  def printDiamond(char) do
    if char == 'D' do
      """
         A
        #{middle_bit("B")}
       #{middle_bit("C")}
      #{middle_bit("D")}
       #{middle_bit("C")}
        #{middle_bit("B")}
         A
      """
    else
      if char == 'C' do
        """
          A
         #{middle_bit("B")}
        #{middle_bit("C")}
         #{middle_bit("B")}
          A
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
end
