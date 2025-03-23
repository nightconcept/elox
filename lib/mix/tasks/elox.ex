defmodule Mix.Tasks.Elox.Run do
  use Mix.Task

  @shortdoc "Runs the Elox interpreter"
  def run(args) do
    Elox.main(args)
  end
end
