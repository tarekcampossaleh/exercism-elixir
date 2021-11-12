defmodule Lasagna do
  @expected_minutes 40
  @layers_param 2
  @alarm_message "Ding!"

  def expected_minutes_in_oven(), do: @expected_minutes

  def remaining_minutes_in_oven(time), do: @expected_minutes - time

  def preparation_time_in_minutes(layers), do: layers * @layers_param

  def total_time_in_minutes(layers, minutes) do
    (layers * @layers_param) + minutes
  end

  def alarm, do: @alarm_message
end
