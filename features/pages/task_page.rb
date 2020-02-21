class Task < SitePrism::Page
    set_url "http://www.juliodelima.com.br/taskit/task"
    
    element :addtask, 'body > div.container > div > div > div.row.center > button'
    element :titlo, 'input[name="title"]'
    element :campodatalimit, 'input[name="date"]'
    element :campotempo, 'input[name="time"]'
    element :text, '#addtask > div.modal-content > div:nth-child(5) > div > textarea'       
    element :selecData, :xpath, '/html/body/div[2]/div[1]/div[3]/div[1]/div/div/div/div/div/div[2]/div[1]/table/tbody/tr[4]/td[4]/div'        
    element :botaoOk, :xpath, '/html/body/div[2]/div[1]/div[3]/div[1]/div/div/div/div/div/div[2]/div[2]/button[3]'
    element :selechora, :xpath, '/html/body/div[2]/div[1]/div[3]/div[2]/div/div/div/div/div/div[2]/div[1]/div[1]/div[2]/div[11]'
    element :selecminuto, :xpath, '/html/body/div[2]/div[1]/div[3]/div[2]/div/div/div/div/div/div[2]/div[1]/div[1]/div[3]/div[1]'
    element :botaosave, '#addtask > div.modal-footer > a'
    

            def date
                addtask.click
                sleep 2
                titlo.set "teste 123"
                campodatalimit.click
                sleep 2
                selecData.click
                sleep 1
                botaoOk.click

            end    


            def hora
                # binding pry
                campotempo.click
                selechora.click
                selecminuto.click
                botaoOk.click

            end    

end    