# SfFoodTrucks

SfFoodTrucks is an Elixir package that fetches food truck data from the San Francisco government API and provides an easy way to access the data in a structured format.

## Installation

Add `sf_food_trucks` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sf_food_trucks, "~> 0.1.0"}
  ]
end

Then, run mix deps.get to fetch the dependency.

`data = SfFoodTrucks.fetch_data()`

