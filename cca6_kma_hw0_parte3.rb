# Author: Carine Calixto Aguena e Karina Moreira Azevedo
# email: cca6@cin.ufpe.br e kma@cin.ufpe.br
# date: 20-mai-2015

class BookInStock

    def initialize(isbn, preco)
        
        raise ArgumentError, "O número ISBN ou o preço são inválidos"  if isbn.empty? || preco <= 0

        @isbn = isbn
        @preco = preco

    end
    
    def getIsbn
        @isbn
    end
    
    def getPreco
        @preco
    end
    
    def setIsbn=(isbn)
        @isbn = isbn
    end
    
    def setPreco=(preco)
        @preco = preco
    end
    
    def price_as_string 
        
        "$" + ('%.02f' % getPreco).to_s
    end

end

teste = BookInStock.new("fff",11.995545)


puts "O livro de ISBN " + teste.getIsbn + " caga " + teste.price_as_string
