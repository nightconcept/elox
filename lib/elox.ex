defmodule Elox do
  @moduledoc """
  Documentation for `Elox`.
  """

  def start(_, _) do
    # Returning `{:ok, pid}` will prevent the application from halting.
    # Use System.halt(exit_code) to terminate the VM when required
    System.argv() |> run()
   end

  @doc """
  Hello world.

  ## Examples

      iex> Elox.hello()
      :world

  """
  def main do
    System.argv() |> run()
  end

  def run(arguments) do
    cond do
      length(arguments) > 1 ->
        IO.puts("Usage: elox [script]")
      length(arguments) == 1 ->
        run_file()
      true ->
        run_prompt()
    end

  end


  def run_file() do
    IO.puts("Running file!")
  end

  def run_prompt do
    IO.puts("Running file!")
  end
end
