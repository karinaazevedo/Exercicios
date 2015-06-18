# Author: Carine Calixto Aguena e Karina Moreira Azevedo
# email: cca6@cin.ufpe.br e kma@cin.ufpe.br
# date: 20-mai-2015

class BookInStock
    
    def initialize(isbn, price)
        
        raise ArgumentError, "O numero ISBN ou o preco sao invalidos"  if isbn.empty? || price <= 0

        @isbn = isbn
        @price = price

    end
    
    def getIsbn
        @isbn
    end
    
    def getPrice
        @price
    end
    
    def setIsbn=(isbn)
        @isbn = isbn
    end
    
    def setPrice=(price)
        @price = price
    end
    
    def price_as_string 
        
        "$" + ('%.02f' % getPrice).to_s
    end
end
