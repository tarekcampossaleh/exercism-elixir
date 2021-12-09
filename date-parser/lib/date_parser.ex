defmodule DateParser do
  def day(), do: "\\d{1,2}"

  def month(), do: "\\d{1,2}"

  def year(), do: "\\d{4}"

  def day_names(), do: "(Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday)"

  def month_names(),
    do: "(January|February|March|April|May|June|July|August|September|October|November|December)"

  def capture_day() do
    # Please implement the capture_day/0 function
  end

  def capture_month() do
    # Please implement the capture_month/0 function
  end

  def capture_year() do
    # Please implement the capture_year/0 function
  end

  def capture_day_name() do
    # Please implement the capture_day_name/0 function
  end

  def capture_month_name() do
    # Please implement the capture_month_name/0 function
  end

  def capture_numeric_date() do
    # Please implement the capture_numeric_date/0 function
  end

  def capture_month_name_date() do
    # Please implement the capture_month_name_date/0 function
  end

  def capture_day_month_name_date() do
    # Please implement the capture_day_month_name_date/0 function
  end

  def match_numeric_date() do
    # Please implement the match_numeric_date/0 function
  end

  def match_month_name_date() do
    # Please implement the match_month_name_day/0 function
  end

  def match_day_month_name_date() do
    # Please implement the match_day_month_name_date/0 function
  end
end
