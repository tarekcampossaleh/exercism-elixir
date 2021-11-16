defmodule FreelancerRates do
  @daily_rate 8.0
  @billable_days 22.0
  @total 100
  @decimal_places 1

  def daily_rate(hourly_rate), do: hourly_rate * @daily_rate

  def apply_discount(before_discount, discount) do
    before_discount * (@total - discount) / @total
  end

  def monthly_rate(hourly_rate, discount) do
    apply_discount(daily_rate(hourly_rate) * @billable_days, discount)
    |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget / apply_discount(daily_rate(hourly_rate), discount))
    |> Float.floor(@decimal_places)
  end
end
