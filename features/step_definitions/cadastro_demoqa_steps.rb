Dado("esteja na home no site") do
    visit 'http://demoqa.com/'
  end
  
  Quando("clicar no link Registration abrir a pagina de registro") do
    find(:xpath, '//*[@id="menu-item-374"]').click
  end
  
  Entao("realizar o cadastro") do
    fill_in('first_name', :with => 'Cosmo Rodrigo')
    fill_in('last_name', :with => 'Evangelista Lira')
    find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[1]').click
    find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[2]').click
    select('Brazil', :from => 'dropdown_7')
    select('6', :from => 'date_8[date][mm]')
    select('9', :from => 'date_8[date][dd]')
    select('1986', :from => 'date_8[date][yy]')
    fill_in('phone_9', :with => '5511943097974')
    fill_in('username', :with => 'cosmorodrigo')
    fill_in('email_1', :with => 'cosmorodrigo1@gmail.com')
    attach_file('profile_pic_10', File.absolute_path('C:\Users\Inmetrics\Pictures\Inmetrics.png'))
    fill_in('description', :with => 'Sobre mim mesmo')    
    fill_in('password', :with => 'Inmetrics@123')    
    fill_in('confirm_password_password_2', :with => 'Inmetrics@123')
    click_button('Submit')
  end