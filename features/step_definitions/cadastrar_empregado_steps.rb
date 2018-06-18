Dado("que estou logado no site OrangeHRM") do
    visit 'http://opensource.demo.orangehrmlive.com/'
    fill_in('txtUsername', with: 'admin')
    fill_in('txtPassword', with: 'admin')
    click_button('btnLogin')
  end
  
  Quando("eu acessar a aba PIM") do
    click_link('menu_pim_viewPimModule')
    click_link('menu_pim_addEmployee')
  end
  
  Entao("eu cadastro os dados de um novo empregado") do
    fill_in('firstName', with: 'Gabriel')
    fill_in('lastName', with: 'Jesus')
    click_button('btnSave')
  end