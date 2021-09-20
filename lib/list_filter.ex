defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListFilter.call()
      :world

  """
  def call(list) do
    numbers =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    odds = Enum.filter(numbers, fn number -> rem(number, 2) == 1 end)
    length(odds)
  end
end
