defmodule Elox.MixProject do
  use Mix.Project

  def project do
    [
      app: :opal,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.cobertura": :test
      ],
      releases: releases(),
      aliases: aliases()
    ]
  end

  defp aliases do
    [
      elox: ["run", "Elox"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Elox, []}
    ]
  end

  def package do
    [
      description: "Lox interpreter written in Elixir.",
      maintainers: ["Danny Solivan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/nightconcept/elox"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:burrito, "~> 1.3"},
      # Dev and test dependencies
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.18", only: [:test]},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end

  def releases do
    [
      example_cli_app: [
        steps: [:assemble, &Burrito.wrap/1],
        burrito: [
          targets: [
            macos: [os: :darwin, cpu: :x86_64],
            linux: [os: :linux, cpu: :x86_64],
            windows: [os: :windows, cpu: :x86_64]
          ]
        ]
      ]
    ]
  end
end
