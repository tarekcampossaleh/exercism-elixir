defmodule BirdCount do

  def today([]), do: nil
  def today([head|_]), do: head

  def increment_day_count([]), do: [1]
  def increment_day_count([head| tail]), do: [head+1|tail]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0|_tail]), do: true
  def has_day_without_birds?([_head|tail]), do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total(list) do
    # Please implement the total/1 function
  end

  def busy_days(list) do
    # Please implement the busy_days/1 function
  end
end
