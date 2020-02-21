Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }


module PageObjects

    def cadastro
        @cadastro ||= Cadastro.new         
    end

    def login
        @login ||= Login.new
    end    

   def task
        @task ||= Task.new
   end  

end
