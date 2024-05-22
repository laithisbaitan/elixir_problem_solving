defmodule DistinctNumbers do

  def solve do
    # Read the number of elements
    [n | _] =
      IO.gets("Enter number of values:\n")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    # Read the list of integers
    values =
      IO.gets("")
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    cond do
      length(values) != n ->
        IO.puts("values numbers are not the same a entered number of values!")
      true ->
        # creating MapSet from list to make sure all values are distinct
        distinct_values = MapSet.new(values)

        # output number of distinct values
        IO.puts(MapSet.size(distinct_values))
    end
  end
end
