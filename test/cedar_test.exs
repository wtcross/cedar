defmodule CedarTest do
  use ExUnit.Case
  doctest Cedar

  test "greets the world" do
    assert Cedar.hello() == :world
  end
end
