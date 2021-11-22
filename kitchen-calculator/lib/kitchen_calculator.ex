defmodule KitchenCalculator do
  @cup 240.0
  @fluid_ounce 30.0
  @teaspoon 5.0
  @tablespoon 15.0

  def get_volume({_key, value}), do: value

  def to_milliliter({key, value}) when key == :cup, do: {:milliliter, value * @cup}
  def to_milliliter({key, value}) when key == :fluid_ounce, do: {:milliliter, value * @fluid_ounce}
  def to_milliliter({key, value}) when key == :teaspoon, do: {:milliliter, value * @teaspoon}
  def to_milliliter({key, value}) when key == :tablespoon, do: {:milliliter, value * @tablespoon}
  def to_milliliter({key, value}), do: {key, value}

  def from_milliliter({_, value}, unit) when unit == :cup, do: {unit, value / @cup}
  def from_milliliter({_, value}, unit) when unit == :teaspoon, do: {unit, value / @teaspoon}
  def from_milliliter({_, value}, unit) when unit == :tablespoon, do: {unit, value / @tablespoon}
  def from_milliliter({_, value}, unit) when unit == :fluid_ounce, do: {unit, value / @fluid_ounce}
  def from_milliliter({_, value}, unit), do: {unit, value}

  def convert(from, unit), do: to_milliliter(from) |>  from_milliliter(unit)
end
