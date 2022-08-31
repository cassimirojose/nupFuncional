defmodule Listatuple do

  #listaTupla = [{nome: "Pablo", 18}, {nome: "Elder", 37}, {nome: "Cassimiro", 22}, {nome: "Alexandre", 32},{nome: "Livia", 29}]

  def pessoaMaisNova(pessoas) do
    idades = Enum.map(pessoas, fn x -> elem(x, 1) end)
    nomes = Enum.map(pessoas, fn x -> elem(x, 0) end)

    menorIdade = Enum.min(idades)
    indexMenorIdade = Enum.find_index(idades, fn x -> x == menorIdade end)
    pessoaMaisJovem = Enum.at(nomes, indexMenorIdade)
    pessoaMaisJovem
  end

  def acimaDe30(lista) do
    Enum.filter(lista, fn x -> elem(x, 1) > 30 end)
    |> Enum.count()
  end




  def idadeimpar(pessoas) do
    Enum.filter(pessoas, fn x -> rem(elem(x, 1),2) == 1 end)
  end





end
