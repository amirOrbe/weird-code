defmodule Lists.List do
  @moduledoc """
  Weird experiments with lists
  """

  @doc """
  Concatenation of lists when pass through pipe

  #Parameters

  - list1: It's a list of something
  - list2: It's another list of something

  #Examples

      iex> List.concatenation_of_lists_with_kernel([1, 2, 3], [4, 5, 6])
      [1, 2, 3, 4, 5, 6]

      iex> Enum.map([1, 2, 3], fn l -> l * 10 end) |> List.concatenation_of_lists_with_kernel([40, 50])
      [10, 20, 30, 40, 50]
  """
  @spec concatenation_of_lists_with_kernel(list(), list()) :: list()
  def concatenation_of_lists_with_kernel(list_one, list_two) do
    list_one |> Kernel.++(list_two)
  end
end
