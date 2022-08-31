defmodule Uniao do


  def unir(lista, lista2) do
    MapSet.union(MapSet.new(lista), MapSet.new(lista2))
  end


  def intersecaoListas(lista, lista2) do
    MapSet.intersection(MapSet.new(lista), MapSet.new(lista2))

  end

  def unir2(lista, lista2) do
    lista ++ lista2
  end

  def intersecao(lista,lista2) do
    lista -- lista2
  end
end
