defmodule MyFunctions2 do
  @doc """
  convolution

  ## Examples

    iex> MyFunctions.fold([1, 2, 3], 1, fn x, acc -> x + acc end)
    7
  """

  def fold([], acc, _fun), do: acc

  def fold([h | t], acc, fun), do: fold(t, fun.(h, acc), fun)


  def reverse(list) do
    fold(list, [], fn x, acc -> [x | acc] end)
  end

  def map(list, fun) do
    fold(list, [], fn x, acc -> [fun.(x) | acc] end)
    |> reverse()
  end

  def filter(list, fun) do
    fold(list, [], fn x, acc ->
      if fun.(x) do [x | acc] else acc end end)
    |> reverse()
  end

  def concat(list1, list2) do
    reverse(list1)
    |> fold(list2, fn x, acc -> [x | acc] end)
  end

  def foldr([], acc, _fun), do: acc
  
  def foldr([h | t], acc, fun), do: fun.(h, foldr(t, acc, fun))

  def mapr(list, fun) do
    foldr(list, [], fn x, acc -> [fun.(x) | acc] end)
  end
end
