defmodule KitchenCalculator do
  def get_volume({_key, value}), do: value

  def to_milliliter({key, value}) when key == :cup, do: {:milliliter,value * 240}
  def to_milliliter({key, value}) when key == :fluid_ounce, do: {:milliliter,value * 30}
  def to_milliliter({key, value}) when key == :teaspoon, do: {:milliliter,value * 5}
  def to_milliliter({key, value}) when key == :tablespoon, do: {:milliliter,value * 15}
  def to_milliliter({key, value}), do: {key,value}


  def from_milliliter({_key, value}, unit) when unit == :cup, do: {unit, value / 240}
  def from_milliliter({_key, value}, unit) when unit == :fluid_ounce, do: {unit, value / 30}
  def from_milliliter({_key, value}, unit) when unit == :teaspoon, do: {unit, value / 5}
  def from_milliliter({_key, value}, unit) when unit == :tablespoon, do: {unit, value / 15}
  def from_milliliter({_key, value}, unit), do: {unit, value}

  def convert(volume_pair, unit) do
    # https://exercism.org/tracks/elixir/exercises/kitchen-calculator
  end
end
