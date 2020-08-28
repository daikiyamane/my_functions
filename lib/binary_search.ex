defmodule BinarySearch do
  def binary_search(data, n), do: _binary_search(data, 0, length(data) - 1, n)

  defp _binary_search(_, left, right, _) when left > right, do: -1

  defp _binary_search(data, left, right, n) do
    mid = div(left + right, 2)
    mid_value = Enum.at(data, mid)
    cond do
      mid_value == n ->
        mid
      mid_value > n ->
        _binary_search(data, left, mid - 1, n)
      mid_value < n ->
        _binary_search(data, mid + 1, right, n)
    end
  end
end
