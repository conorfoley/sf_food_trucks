defmodule SfFoodTrucksTest do
  use ExUnit.Case
  doctest SfFoodTrucks

  test "fetches data and converts to list of maps" do
    result = SfFoodTrucks.fetch_data()
    assert is_list(result)
    assert length(result) > 0
    assert is_map(List.first(result))
  end
end
