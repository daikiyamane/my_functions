defmodule FizzBuzz do
  def fizz_buzz(n) when rem(n, 15) == 0, do: "FizzBuzz"
  def fizz_buzz(n) when rem(n, 3) == 0, do: "Fizz"
  def fizz_buzz(n) when rem(n, 5) == 0, do: "Buzz"
  def fizz_buzz(n), do: n

end
