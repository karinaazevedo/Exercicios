# Authoras: Carine Calixto Aguena e Karina Moreira Azevedo
# emails: cca6@cin.ufpe.br e kma@cin.ufpe.br
# date: 22-Mai-2015

def hello(name) 
    
    "Hello, " << name
end

def starts_with_consonant?(s) 
    
   s.downcase!
    if /[b-df-hj-np-tv-z]/.match(s.chr)
        true
    else
        false
    end
end

def binary_multiple_of_4?(s) 
    
    if /[2-9]/.match(s)
        false
    elsif (s.to_i(2) % 4 == 0)
        true
    else
        false
    end

end
