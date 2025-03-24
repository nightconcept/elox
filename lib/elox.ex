defmodule Elox do
  @moduledoc """
  Main entry point for `Elox` interpreter and REPL.

  ## Examples
      mix elox ./hello_world.lox
      elox ./hello_world.lox
  """


  @doc """
  Entry point required for Burrito compilation. Do not call this method.
  """
  def start(_, _) do
    {:ok, spawn(fn -> main(Burrito.Util.Args.get_arguments()) end)}
   end


  @spec main(list()) :: :ok
  @doc """
  Main entry point called by `mix run` and Elox.start() function.

  Returns `:ok`.
  """
  def main(args) do
    # TODO fix this via: https://www.jonathanychan.com/blog/statically-linking-an-elixir-command-line-application-using-burrito/
    cond do
      length(args) > 1 ->
        IO.puts("Usage: elox [script]")
      length(args) == 1 ->
        List.first(args) |> run_file()
      true ->
        repl()
    end
  end

  defp run_file(path) do
    case File.read(path) do
      {:ok, source} -> run(source)
      {:error, reason} -> IO.puts("Error reading file: #{inspect(reason)}")
    end
  end

  defp repl do
    IO.puts("Running REPL!")
  end

  defp run(source) do
    IO.puts("Source: #{inspect(source)}")
  end

end
