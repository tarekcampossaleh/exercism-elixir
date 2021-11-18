defmodule LanguageList do
  @exciting_lang "Elixir"

  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list), do: list |> tl

  def first(list), do: list |> hd

  def count(list), do: list |> length

  def exciting_list?(list), do: @exciting_lang in list
end
