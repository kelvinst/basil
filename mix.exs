defmodule Basil.MixProject do
  use Mix.Project

  @version "0.1.0"
  @repo_url "https://github.com/kelvinst/basil"

  def project do
    [
      app: :basil,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Hex
      package: package(),
      description: "Small and composable SMTP client.",

      # Docs
      name: "Basil",
      docs: [
        source_ref: "v#{@version}",
        source_url: @repo_url,
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => @repo_url}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :dev, runtime: false}
    ]
  end
end
