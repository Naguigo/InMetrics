#language:pt


Funcionalidade: Testar WebSite


Cenario: Criar usuario
    Dado que eu esteja no site.
    Quando eu clicar em cadastrar usuario e preencher os dados.
    Entao cadastro será feito e serei autenticado no site.

@teste
Cenario: Criar Task para visualização.
    Dado que eu esteja logado.
    Quando eu criar uma tarefa.
    Entao poderei visualizar a tarefa criada.