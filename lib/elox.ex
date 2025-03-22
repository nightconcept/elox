defmodule Elox do
  @moduledoc """
  Documentation for `Elox`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Elox.hello()
      :world

  """
  def hello do
    :world
  end

  def start(_, _) do
    # Returning `{:ok, pid}` will prevent the application from halting.
    # Use System.halt(exit_code) to terminate the VM when required
      IO.puts("Hello, world!!")
      System.halt(0)
   end
end
