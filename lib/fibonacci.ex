defmodule Fibonacci do
  def fb(1), do: 1

  def fb(2), do: 1

  def fb(n), do: fb(n - 1) + fb(n - 2)

  #tail recursion
  def fb_recursion(n), do: _fb_recursion(n, 0, 1)

  defp _fb_recursion(0, acc, _bcc), do: acc

  defp _fb_recursion(n, acc, bcc), do: _fb_recursion(n - 1, bcc, acc + bcc)

end
