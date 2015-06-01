# Defina o método chamado sum que recebe um array de inteiros como argumento
# e retorna a soma dos seus elementos. Para um array vazio, ele deve retornar zero.

def sum(a)
    
    if a.empty?
        0
    else
        i=0
        saida = 0
        while i < a.length
            saida += a[i]
            i += 1
        end
        saida
    end
end

# Defina o método chamado max_2_sum que recebe um array de inteiros  
# como parâmetro e retorna a soma dos seus dois maiores elementos.
# Para um array vazio, ele deve retornar zero. 
# Para um array com somente um elemento, ele deve retornar este elemento.

def max_2_sum(a)
    if a.empty?
        return 0
    elsif a.length == 1
        return a[0]
    else
        a.sort!
        soma = a[a.length-2] + a[a.length-1]
        return soma
    end
end

arr = [1, 2, 30, 4, 5]
puts max_2_sum(arr)

# Defina o método chamado sum_to_n? que recebe um array de inteiros
# e um inteiro adicional (n) como argumentos e retorna true se a soma de dois 
# elementos distintos no array de inteiros seja igual a n. Um array vazio 
# ou com somente um elemento deve retornar false.

def sum_to_n?(a, n)
    bool = false
    if a.empty? || a.length == 1
        bool = false
    else
        i = 0
        while i <= a.length-1 do
            num = a[i]
            i +=1
            j = i
            while j <= a.length-1 do
                if(num+a[j])==n
                    bool = true
                end
                j += 1
            end
        end
    end
    return bool
end

array= [1, 12, 2, 23, 44, 5, 52, 6, 74, 90]
puts sum(array)
puts max_2_sum(array)
puts sum_to_n?(array, 164)
