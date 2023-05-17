defmodule SfFoodTrucks do
  @moduledoc """
  Fetches food truck data from the San Francisco government API.
  """

  require HTTPoison
  require IO
  require CSV

  def fetch_data do
    response =
      HTTPoison.get("https://data.sfgov.org/api/views/rqzj-sfat/rows.csv")
      |> handle_response

    case response do
      {:ok, body} ->
        {:ok, io_device} = StringIO.open(body)
        io_device
        |> IO.stream(:line)
        |> CSV.decode(headers: true)
        |> Enum.map(&create_map/1)

      {:error, reason} ->
        {:error, reason}
    end
  end

  defp handle_response({:ok, %{body: body}}), do: {:ok, body}
  defp handle_response({:error, reason}), do: {:error, reason}

  defp create_map({:ok, row}), do: Map.new(row)
end
