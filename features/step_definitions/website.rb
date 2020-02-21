


Dado("que eu esteja no site.") do
    visit CONFIG["url_padrao"]
end
  
  Quando("eu clicar em cadastrar usuario e preencher os dados.") do
    
    cadastro.load
    find('#signup').click
    cadastro.cadastrar
    sleep 2
    find('#signupbox > div.modal-footer > a').click

  end
  
  
  Entao("cadastro será feito e serei autenticado no site.") do
    expect(page).to have_content 'Amazing!'
    find('body > div.container > div > div > p:nth-child(3) > a')
  end
  
  Dado("que eu esteja logado.") do
    login.load
    sleep 2
    login.logar
    sleep 2
  end
  
  Quando("eu criar uma tarefa.") do
    task.load 
    task.date
    task.hora
    # campo time nao fica visivel na tela quando é feito o click.
    task.botaosave.click

  end
  
  Entao("poderei visualizar a tarefa criada.") do
    
  end