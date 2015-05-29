# Author: Carine Calixto Aguena
# email: cca6@cin.ufpe.br
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
    char = s[0]
    if /[a-w&&[^aeiou]]/.match(char)
        return true
    else
        return false
    end
end

puts starts_with_consonant?("arineguenarine")
puts starts_with_consonant?("erineguenarine")
puts starts_with_consonant?("irineguenarine")
puts starts_with_consonant?("orineguenarine")
puts starts_with_consonant?("urineguenarine")
puts starts_with_consonant?("1arineguenarine")
puts starts_with_consonant?("Carineguenarine")
puts starts_with_consonant?("larineguenarine")


#(c) Defina o método binary_multiple_of_4?(s) que recebe uma string e 
#retorna true se a string representa um número binário válido que é múltiplo de 4. 
#NOTA: esteja certo de que o método retorna false se a string não é um número binário válido!
def binary_multiple_of_4?(s) 
    
    if /[2-9]/.match(s)
        false
    elsif (s.to_i(2) % 4 == 0)
        true
    else
        false
    end

end