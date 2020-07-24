Dado("que estou na página inicial") do
  @cadastro = CadastroPage.new
  @cadastro.load
end

Quando("aciono a opção sign in") do
  @cadastro.clicar_botao_sign_in
end

Quando("informo um email") do
  @cadastro.informar_email
end

Quando("aciono o botão create an account") do
  @cadastro.clicar_botao_create_account
end

Quando("preencho o formulário e clico no botão register") do
  @cadastro.preencher_formulario
end

Então("vejo a tela inicial do sistema.") do
  @cadastro.validar_teste
end
