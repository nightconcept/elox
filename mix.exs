defmodule Elox.MixProject do
  use Mix.Project

  def project do
    [
      app: :elox,
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
      elox: "elox.run"
    ]
  end

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
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.18", only: [:test]},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
    ]
  end

  def releases do
    [
      elox: [
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
