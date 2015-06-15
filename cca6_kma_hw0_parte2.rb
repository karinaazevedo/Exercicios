# Author: Carine Calixto Aguena e Karina Moreira Azevedo
# email: cca6@cin.ufpe.br e kma@cin.ufpe.br
# date: 20-mai-2015

#(a) Defina o método chamado hello(name) que recebe uma string representando um nome e retorna a string "Hello, " 
#concatenada com o nome.

def hello(name)
    return "Hello, #{name}"
end

puts hello("Carine")

#(b) Defina o método starts_with_consonant?(s) que recebe uma string e 
#retorna true se ela inicia com uma consoante e false se não. 
#(Para os nossos propósitos, uma consoante é qualquer letra diferente de A, E, I, O, U). 
#NOTA: esteja certo de que o método funciona tanto para upper quanto para lower case e para "não letras".

def starts_with_consonant?(s)
    s.downcase!
    if /[a-w&&[^aeiou]]/.match(s.chr)
        return true
    else
        return false
    end
end


#(c) Defina o método binary_multiple_of_4?(s) que recebe uma string e 
#retorna true se a string representa um número binário válido que é múltiplo de 4. 
#NOTA: esteja certo de que o método retorna false se a string não é um número binário válido!
def binary_multiple_of_4?(s) 
    
    if /[2-9]/.match(s)
        return false
    elsif (s.to_i(2) % 4 == 0)
        return true
    else
        return false
    end

end