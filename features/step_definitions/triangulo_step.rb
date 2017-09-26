Dado(/^que estou na tela do TrianguloApp$/) do
 find_element(:xpath, "//*[@text='TrianguloApp']")
end

Quando(/^eu preencher todos os campos com tres$/) do 
find_element(:id, 'txtLado1').send_keys('3')
find_element(:id, 'txtLado2').send_keys('3')
find_element(:id, 'txtLado3').send_keys('3')
end

Quando(/^eu clicar em Calcular$/) do
find_element(:id, 'btnCalcular').click
 #Appium::TouchAction.new.tap( x: 150, y:780, count: 3).release.perform
end

Entao(/^a mensagem O triângulo é Equilátero sera exibida$/) do 
 find_element(:xpath, "//*[@text='O triângulo é Equilátero']").displayed?
end