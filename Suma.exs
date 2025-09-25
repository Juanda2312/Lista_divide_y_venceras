defmodule SumaLista do
  def main do
    n = [3,4,5,7,3]
    suma(n)
    |> IO.puts()
  end

  def suma([]), do: 0
  def suma([n]), do: n
  def suma(lista) do
      mitad = div(length(lista),2)
      {a,b} = Enum.split(lista,mitad)

      suma(a)+suma(b)
  end
end

SumaLista.main()
