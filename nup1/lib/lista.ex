defmodule Lista do


  def lista([head | tail], valor, tamanho, contador) do

    if contador == tamanho do
      IO.puts(valor)
    else
      if (valor < head) do
      valor = head
      contador = contador + 1
      lista(tail, valor, tamanho,contador)
      else
      contador = contador + 1
        if contador == tamanho do
         IO.puts(valor)
        else
        lista(tail, valor, tamanho, contador)
        end
      end
    end
  end

      #valores = {maiorvalor,contador}
      #valores


  def lista2([head | tail], maiorvalor, contador ) do

    if maiorvalor == head and contador == 0 do
      maior = round(maiorvalor)
      index = round(contador)

      {maior, index}

    end
    if maiorvalor == head and contador != 0 do
      maior = round(maiorvalor)
      index = round(contador)

      {maior, index}


    else
      contador = contador + 1
      lista2(tail, maiorvalor,contador)
    end




  end












end

#valores = [7,2,9,10,8]
#Lista.lista2(valores, Enum.max(valores), 0)
