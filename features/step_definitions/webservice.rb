

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Dado("que eu envie um GET para API s=") do
    Suri_base = "http://swapi.co/api/films/"
end
  
Quando("receber as respostas contendo os filmes") do
    response = HTTParty.get(Suri_base)
    
    
       
      @data = response.parsed_response["results"]
      
     
   
   
end
  
  Então("poderei ver o Titulo") do
    
      @data.each do |item|

        puts item["title"]
       
      end 
    
  end