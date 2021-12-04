defmodule KeywordExtra do
  @moduledoc """
  Extra utilities for keyword lists
  """

  @doc """
  Sorts and compares two keyword lists, recursively.
  """
  def sorted_equal?(kw_1, kw_2) do
    do_sorted_equal?(Enum.sort(kw_1), Enum.sort(kw_2))
  end

  defp do_sorted_equal?([], []), do: true
  defp do_sorted_equal?([], _), do: false
  defp do_sorted_equal?(_, []), do: false

  defp do_sorted_equal?([{key, value_1} | rest_1], [{key, value_2} | rest_2]) do
    if Keyword.keyword?(value_1) and Keyword.keyword?(value_2) do
      sorted_equal?(value_1, value_2) and do_sorted_equal?(rest_1, rest_2)
    else
      value_1 == value_2 and do_sorted_equal?(rest_1, rest_2)
    end
  end

  defp do_sorted_equal?(_, _), do: false
end
