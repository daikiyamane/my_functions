defmodule IsPrime do
  @doc """
  Judge a prime number.

  ## Examples

    iex> IsPrime.is_prime(10)
    false
  """

  def is_prime?(n) when n <= 1, do: false

  def is_prime?(n) do
    n_sqrt = n |> :math.sqrt() |> trunc()
    _is_prime?(n, n_sqrt)
  end

  defp _is_prime?(_, 1), do: true

  defp _is_prime?(n, n_sqrt) do
    case rem(n, n_sqrt) do
      0 -> false
      _ -> _is_prime?(n, n_sqrt - 1)
    end
  end

  @doc """
  Returns a prime numbers.

  ## Examples

    iex> IsPrime.print_prime(1, 10)
    2
    3
    5
    7
  """

  def print_prime(n, m) do
    Enum.each(n..m, fn x -> if is_prime?(x) do IO.puts(x) end end)
  end
end
