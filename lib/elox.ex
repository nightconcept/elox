defmodule Elox do
  @moduledoc """
  Documentation for `Elox`.
  """

  def start(_type, _args) do
    # Returning `{:ok, pid}` will prevent the application from halting.
    # Use System.halt(exit_code) to terminate the VM when required
    {:ok, spawn(fn -> main(System.argv()) end)}
   end


  def main(args) do
    IO.puts("Number of arguments: #{length(args)}")
    cond do
      length(args) > 1 ->
        IO.puts("Usage: elox [script]")
      length(args) == 1 ->
        List.first(args) |> run_file()
      true ->
        repl()
    end
  end

  def run_file(path) do
    IO.puts("Path: #{path}")
    case File.read(path) do
      {:ok, source} -> run(source)
      {:error, reason} -> IO.puts("Error reading file: #{inspect(reason)}")
    end
  end

  def repl do
    IO.puts("Running REPL!")
  end

  def run(source) do
    IO.puts("Source: #{inspect(source)}")
  end

end
