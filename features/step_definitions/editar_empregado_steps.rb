Dado("que eu estou logado no site OrangeHRM") do
    visit "http://opensource.demo.orangehrmlive.com"
    fill_in('txtUsername', with: 'admin')
    fill_in('txtPassword', with: 'admin')
    click_button('btnLogin')
  end
  
  Quando("acessar a aba PIM") do
    click_link('menu_pim_viewPimModule')
    click_link('menu_pim_viewEmployeeList')
  end
  
  Entao("eu edito as informacoes de um empregado existente") do
    click_link('0001')
    click_button('btnSave')
    fill_in('personal_txtLicenNo', with: '123456789')
    fill_in('personal_txtLicExpDate', with: '2020-01-01')
    fill_in('personal_DOB', with: '1992-08-02')
    click_button('btnSave')
  end