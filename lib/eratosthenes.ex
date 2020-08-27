defmodule Eratosthenes do
  @doc """
  Return a list of prime numbers using Elastenes' sieve

  ## Examples

    iex> Eratosthenes.get_prime(10)
    [2, 3, 5, 7]
  """
  def get_prime(n) when n <= 1, do: []

  def get_prime(n) do
    limit = :math.sqrt(n) |> trunc()
    Enum.filter(2..n, &(rem(&1, 2) != 0))
    |> _get_prime([2], limit)
  end

  defp _get_prime(data = [h | _], prime, limit) when limit >= h do
      Enum.filter(data, &(rem(&1, h) != 0))
      |> _get_prime([h | prime], limit)
  end

  defp _get_prime(data, prime, _), do: Enum.reverse(prime) ++ data
end
