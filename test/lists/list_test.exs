defmodule Lists.ListTest do
  use ExUnit.Case

  alias Lists.List

  describe "Concatenate two lists" do
    test "Concatenate two simple lists" do
      assert List.concatenation_of_lists_with_kernel([1], [2]) == [1, 2]
    end

    test "Concatenate two lists of numbers when pass through pipe" do
      list =
        [1, 2, 3]
        |> Enum.filter(fn x -> rem(x, 2) == 0 end)
        |> List.concatenation_of_lists_with_kernel([4, 6])

      assert list == [2, 4, 6]
    end

    test "Concatenate two differents lists" do
      users = [
        [%{name: "Luis", email: "luis@bunsan.io"}],
        [%{name: "Amir", email: "amir@bunsan.io"}],
        [%{name: "Noe", email: "noe@bunsan.io"}]
      ]

      list = Enum.map(users, fn x -> List.concatenation_of_lists_with_kernel(x, [:bunsan]) end)

      assert list ==
               [
                 [%{email: "luis@bunsan.io", name: "Luis"}, :bunsan],
                 [%{email: "amir@bunsan.io", name: "Amir"}, :bunsan],
                 [%{email: "noe@bunsan.io", name: "Noe"}, :bunsan]
               ]
    end
  end
end
