defmodule EloxTest do
  use ExUnit.Case
  doctest Elox

  test "prints the example" do
    assert Elox.main(["lox_examples/hello_world.lox"]) == :ok
  end
end
