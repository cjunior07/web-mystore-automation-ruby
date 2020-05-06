Dado("que eu visito o website Automation Practice") do
  @cadastro = Cadastro.new
  @cadastro.load
end

Quando("eu clico no botão Sign in") do
  @cadastro.sign_in
end

Entao("eu insiro um email valido") do
  @cadastro.criar_email
end

Entao("clico no botão para cadastrar conta") do
  @cadastro.confirmar_conta
end

Entao("eu cadastro um novo usuário") do
  @cadastro.cadastro
  sleep(5)
end
