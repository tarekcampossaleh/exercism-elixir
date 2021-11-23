defmodule HighSchoolSweetheart do
  def first_letter(name), do: String.at(name, 0)

  def initial(name), do: (name |> first_letter() |> String.capitalize()) <> "."

  def initials(full_name) do
  [first_name | second_name] =  String.split(full_name, " ")
  initial(first_name) <> " " <> (second_name |> List.to_string() |> initial())

  end

  def pair(full_name1, full_name2) do
    #      ******       ******
    #    **      **   **      **
    #  **         ** **         **
    # **            *            **
    # **                         **
    # **     X. X.  +  X. X.     **
    #  **                       **
    #    **                   **
    #      **               **
    #        **           **
    #          **       **
    #            **   **
    #              ***
    #               *

    # Please implement the pair/2 function
  end
end
