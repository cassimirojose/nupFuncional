defmodule Calculadora do


  def calc_potencia(numero, potencia)do

    :math.pow(numero, potencia)
    |> round()


  end


  def fatorial(0),do: 1
  def fatorial(1),do: 1
  def fatorial(valor) do

    valor * (fatorial(valor-1))


  end


  def fatorial2(valor),do: fatorial2(valor - 1, valor)
  defp fatorial2(1, res),do: res
  defp fatorial2(valor, res),do: fatorial2(valor-1, res * valor)



  def percentual(valor, porcentagem),do: valor * (porcentagem/100)
  |>round()






end


#IO.puts(Calculadora.calc_potencia(5, 3))
#IO.puts(Calculadora.fatorial(4))
#IO.puts(Calculadora.fatorial2(7))
#IO.puts(Calculadora.percentual(1000,35))
