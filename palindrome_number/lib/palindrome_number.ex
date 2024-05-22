defmodule PalindromeNumber do
  @spec is_palindrome(x :: integer) :: boolean
  # Integer.to_charlist(x) |> Enum.reverse() == Integer.to_charlist(x)
  def is_palindrome(x) when x<0, do: false
  def is_palindrome(x) do
    newX =
      Integer.to_string(x)
      |> String.reverse()
      |> String.to_integer()
    IO.puts(x)
    IO.puts(newX)
    cond do
      x==newX ->
        :true
      true ->
        :false
    end
  end
end
