#encoding: utf-8

class Cadastro < SitePrism::Page
   set_url 'http://www.juliodelima.com.br/taskit/'
        

    element :nome, 'input[name="name"]'
    element :login, 'input[name="login"]'
    element :senha, 'input[name="password"]'

    
        def cadastrar
           nome.set Faker::Name.name
           login.set Faker::Internet.email
           senha.set Faker::Base.numerify('112419####')


        end
end    


class Login < SitePrism::Page
   set_url 'http://www.juliodelima.com.br/taskit/'

   element :botaologar, 'body > nav > div > div > ul.right.hide-on-med-and-down > li > a'
   element :login, 'input[name="login"]'
   element :senha, 'input[name="password"]'
   element :botao_conf_login, '#signinbox > div.modal-footer > a'

      def logar
         botaologar.click
         login.set CONFIG['login']   
         senha.set CONFIG['senha']
         botao_conf_login.click
      end
end

