defmodule Username do
  def sanitize(username), do: sanitize(username, [])
  defp sanitize([], list), do: list

  defp sanitize([head | tail], list) when (head >= ?a and head <= ?z) or head == ?_,
    do: sanitize(tail, list ++ [head])

  defp sanitize([head | tail], list) when head >= ?ß and head <= ?ü do
    case head do
      ?ä -> sanitize(tail, list ++ 'ae')
      ?ö -> sanitize(tail, list ++ 'oe')
      ?ü -> sanitize(tail, list ++ 'ue')
      ?ß -> sanitize(tail, list ++ 'ss')
      _ -> sanitize(tail, list)
    end
  end

  defp sanitize([_head | tail], list), do: sanitize(tail, list)
end

# ä becomes ae
# ö becomes oe
# ü becomes ue
# ß becomes ss
