defmodule LibraryFees do
  def datetime_from_string(string), do: NaiveDateTime.from_iso8601!(string)

  def before_noon?(%NaiveDateTime{hour: hour}), do: hour < 12

  def return_date(checkout_datetime) do
    days = if before_noon?(checkout_datetime), do: 28, else: 29
    NaiveDateTime.to_date(checkout_datetime) |> Date.add(days)
  end

  def days_late(planned_return_date, actual_return_datetime) do
    actual_return_datetime
    |> NaiveDateTime.to_date()
    |> Date.diff(planned_return_date)
    |> case do
      days when days <= 0 -> 0
      days -> days
    end
  end

  def monday?(datetime), do: datetime |> NaiveDateTime.to_date() |> Date.day_of_week() == 1

  def calculate_late_fee(checkout, return, rate) do
    actual_return = return |> datetime_from_string
    expected_return = checkout |> datetime_from_string |> return_date
    fee = days_late(expected_return, actual_return) * rate
    if monday?(actual_return), do: (fee * 0.5) |> Kernel.trunc(), else: fee
  end
end
