defmodule Cedar.MixProject do
  use Mix.Project

  @pretty_name "Cedar"
  @simple_name "cedar"
  @github_url "https://github.com/wtcross/cedar-elixir"

  def project do
    [
      app: :cedar,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      description: description(),
      package: package(),
      name: @pretty_name,
      source_url: @github_url,
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.29.1"},
      {:ex_doc, "~> 0.30.6", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Elixir language bindings for Cedar implemented as a safe Rust NIF"
  end

  defp package() do
    [
      name: @simple_name,
      licenses: ["Apache-2.0"],
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE),
      links: %{"GitHub" => @github_url}
    ]
  end

  defp docs() do
    [
      main: @pretty_name,
      extras: ["README.md", "LICENSE"]
    ]
  end

  defp aliases do
    [
      fmt: [
        "format",
        "cmd cargo fmt --manifest-path native/io/Cargo.toml",
      ]
    ]
  end
end
