defmodule MyFunctions do
  @moduledoc """
  Documentation for `MyFunctions`.
  """

  @doc """
  Return to the factorial.

  ## Examples

      iex> MyFunctions.fact(5)
      120

  """
  def fact(n), do: _fact(n, 1)

  defp _fact(0, acc), do: acc

  defp _fact(n, acc), do: _fact(n - 1, n * acc)

  @doc """
  Return the Fibonacci Number.

  ## Examples

      iex> MyFunctions.fib(10)
      55
  """
  def fib(n), do: _fib(n, 0, 1)

  defp _fib(0, acc, _bcc), do: acc

  defp _fib(n, acc, bcc), do: _fib(n - 1, bcc, acc + bcc)

  @doc """
  Returns a list of elements in enumerable in reverse order.

  ## Examples

      iex> MyFunctions.reverse([1, 2, 3])
      [3, 2, 1]
  """
  def reverse(list), do: _reverse(list, [])

  defp _reverse([], acc), do: acc

  defp _reverse([h | t], acc), do: _reverse(t, [h | acc])

  @doc """
  Converts all the data in the list and returns the list.

  ## Examples

      iex> MyFunctions.map([1, 2, 3], fn x -> x * x end)
      [1, 4, 9]
  """

  def map(list, fun), do: _map(list, fun, [])

  defp _map([], _, acc), do: reverse(acc)

  defp _map([h | t], fun, acc), do: _map(t, fun, [fun.(h) | acc])

  @doc """
  Filters the enumerable.

  ## Examples

      iex> MyFunctions.filter([1, 2, 3], fn x -> rem(x, 2) == 0 end)
      [2]
  """
  def filter(list, fun), do: _filter(list, fun, [])

  defp _filter([], _, acc), do: reverse(acc)

  defp _filter([h | t], fun, acc) do
    case fun.(h) do
      true ->
        _filter(t, fun, [h | acc])
      false ->
        _filter(t, fun, acc)
    end
  end

end
