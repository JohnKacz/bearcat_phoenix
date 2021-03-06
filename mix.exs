defmodule BearcatPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :bearcat_phoenix,
     version: "0.1.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     name: "BearcatPhoenix",
     source_url: "https://github.com/CerebralStorm/bearcat_phoenix"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [applications: [:httpotion], extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpotion, "~> 3.0.2"},
      {:poison, "~> 3.1"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:plug, "~> 1.4.0"},
      {:csv, "~> 2.0.0"}
    ]
  end

  defp description do
    """
    This is a first attempt at an API client for the Canvas LMS
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :bearcat_phoenix,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Cody Tanner"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/CerebralStorm/bearcat_phoenix"}
    ]
  end
end
