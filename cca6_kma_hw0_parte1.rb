# Author: Carine Calixto Aguena e Karina Moreira Azevedo
# email: cca6@cin.ufpe.br e kma@cin.ufpe.br
# date: 20-mai-2015

#a) Defina o método chamado sum que recebe um array de inteiros como argumento e retorna a soma dos seus elementos. 
#Para um array vazio, ele deve retornar zero.
def sum(arr)
    soma = 0
   if arr.empty?
       return soma
   else
       arr.each { |x| soma += arr[x-1] }
   end
   return soma
end

resultado = sum([1, 2, 3, 4, 5])
puts resultado


#b)Defina o método chamado max_2_sum que recebe um array de inteiros como parâmetro 
#e retorna a soma dos seus dois maiores elementos. 
#Para um array vazio, ele deve retornar zero.
#Para um array com somente um elemento, ele deve retornar este elemento.
def max_2_sum(arr_int)
    soma = 0
    if arr_int.empty?
        return soma
        elsif arr_int.length == 1
            return arr_int[0]
        else
            arr_int.reverse!
            soma = arr_int[0] + arr_int[1]
    end
    return soma

end

resultado2 = max_2_sum([])
puts resultado2

#c)Defina o método chamado sum_to_n? que recebe um array de inteiros e um inteiro adicional (n) como argumentos e 
#retorna true se a soma de dois elementos distintos no array de inteiros seja igual a n. 
#Um array vazio ou com somente um elemento deve retornar false.
def sum_to_n?(array_int, n)
    if array_int.empty? || array_int.length == 1
        return false
    else
        array_int.each do |x|
                puts array_int[x-1]
                if x < array_int.length && array_int[x-1] + array_int[x] == n 
                    return true
                end
        end
    end
       return false 
end

bool = sum_to_n?([1, 2, 3, 4], 7)
puts bool
