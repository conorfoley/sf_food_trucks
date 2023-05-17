defmodule SfFoodTrucks.MixProject do
  use Mix.Project

  def project do
    [
      app: :sf_food_trucks,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
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
      {:httpoison, "~> 2.1"},
      {:csv, "~> 3.0"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/conorfoley/sf_food_trucks"},
      description: "Fetches food truck data from the San Francisco government API."
    ]
  end
end
