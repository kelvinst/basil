defmodule BasilTest do
  use ExUnit.Case
  doctest Basil

  test "greets the world" do
    assert Basil.hello() == :world
  end
end
