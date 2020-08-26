defmodule Change do
  def input() do
    insert =
      IO.gets("お金を入力してください。\n")
      |> String.trim()
      |> String.to_integer()
    product =
      IO.gets("商品を入力してください。\n")
      |> String.trim()
      |> String.to_integer()
    insert - product
    |> check()
  end

  def check(change) when change >= 0, do: print_change(change)

  def check(_change) do
    IO.puts "お金が足りません、やり直してください"
    input()
  end

  def print_change(change) do
    _print_change([5000, 1000, 500, 100, 50, 10, 5, 1], change)
  end

  defp _print_change([], _change), do: :ok

  defp _print_change([h | t], change) do
    IO.puts("#{h}: #{div(change, h)}枚")
    _print_change(t, rem(change, h))

  end
end
