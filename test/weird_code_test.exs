defmodule WeirdCodeTest do
  use ExUnit.Case
  doctest WeirdCode

  test "greets the world" do
    assert WeirdCode.hello() == :world
  end
end
