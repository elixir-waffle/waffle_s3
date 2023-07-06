defmodule Waffle.Storage.S3.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :waffle_s3,
      version: @version,
      elixir: "~> 1.4",
      deps: deps(),
      docs: docs(),

      # Hex
      description: description(),
      package: package()
    ]
  end

  defp description do
    """
    Waffle integration for AWS S3.
    """
  end

  defp package do
    [
      maintainers: ["Boris Kuznetsov"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/elixir-waffle/waffle_s3"},
      files: ~w(mix.exs README.md CHANGELOG.md lib)
    ]
  end

  defp docs do
    [
      main: "Waffle.Storage.S3",
      extras: [
        "documentation/examples/s3.md"
      ]
    ]
  end

  def application do
    [
      extra_applications: [
        :logger,
        # Used by Mix.generator.embed_template/2
        :eex
      ]
    ]
  end

  defp deps do
    [
      {:waffle, "~> 1.1"},

      # If using Amazon S3
      {:ex_aws, "~> 2.1"},
      {:ex_aws_s3, "~> 2.1"},
      {:sweet_xml, "~> 0.6"},

      # Test
      {:mock, "~> 0.3", only: :test},

      # Dev
      {:ex_doc, "~> 0.21", only: :dev},

      # Dev, Test
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
