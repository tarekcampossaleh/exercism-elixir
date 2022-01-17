defmodule BoutiqueInventory do
  def sort_by_price(inventory), do: inventory |> Enum.sort_by(& &1.price)

  def with_missing_price(inventory), do: inventory |> Enum.filter(&(&1.price === nil))

  def increase_quantity(item, count) do
    %{
      item
      | quantity_by_size: Enum.into(item.quantity_by_size, %{}, fn {k, v} -> {k, v + count} end)
    }
  end

  def total_quantity(item),
    do: item.quantity_by_size |> Enum.reduce(0, fn {_k, v}, acc -> v + acc end)
end
