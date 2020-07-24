class CadastroPage < SitePrism::Page
  set_url ""
  element :btn_sign_in, ".login"
  element :input_informe_email, "#email_create"
  element :btn_create_account, "#SubmitCreate"
  element :radio_mrs, "#id_gender2"
  element :input_first_name, "#customer_firstname"
  element :input_last_name, "#customer_lastname"
  element :input_password, "#passwd"
  element :input_first_name_address, "#firstname"
  element :input_lastname_address, "#lastname"
  element :input_address, "#address1"
  element :input_city, "#city"
  element :select_state, "#id_state"
  element :input_postcode, "#postcode"
  element :select_country, "#id_country"
  element :input_mobile_phone, "#phone_mobile"
  element :input_address_reference, "#alias"
  element :btn_register, "#submitAccount"

  def clicar_botao_sign_in
    puts "Clicando no botão Sign In"
    btn_sign_in.click
  end

  def informar_email
    puts "Informando um e-mail válido"
    @email = Faker::Internet.email
    input_informe_email.set(@email)
  end

  def clicar_botao_create_account
    puts "Clicando no botão Create Account"
    btn_create_account.click
  end

  def preencher_formulario
    puts "Preenchendo formulário"
    @nome = "#{Faker::Name.first_name}"
    @sobrenome = "#{Faker::Name.last_name}"
    radio_mrs.click
    input_first_name.set(@nome)
    input_last_name.set(@sobrenome)
    input_password.set("12345")
    input_first_name_address.set("Rua de cima")
    input_lastname_address.set("Rua de baixo")
    input_address.set("Rua do Meio")
    input_city.set("Brasília")
    find("#id_state > option:nth-child(3)").click
    input_postcode.set("12345")
    find("#id_country > option:nth-child(2)").click
    input_mobile_phone.set("12345678")
    input_address_reference.set("Rua da Esquina")
    btn_register.click
  end

  def validar_teste
    puts "Validando teste"
    page.assert_text("MY ACCOUNT")
    sleep(2)
  end
end
