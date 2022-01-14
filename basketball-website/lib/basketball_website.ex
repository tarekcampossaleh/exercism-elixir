defmodule BasketballWebsite do
  def extract_from_path(data, path) do
    extract(data, split_path(path))
  end

  defp extract(data, []), do: data

  defp extract(data, [head | tail]) do
    extract(data[head], tail)
  end

  def get_in_path(data, path) do
    get_in(data, split_path(path))
  end

  defp split_path(path), do: path |> String.split(".", trim: true)
end
