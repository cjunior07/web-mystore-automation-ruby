class EstruturaFormulario < SitePrism::Page
  
    #mapeamento de input criação de email
    element :criacao_email_input, '#email_create' 

    #mapeamento de input - formulario de cadastro
    element :sexo_input, '#uniform-id_gender1'
    element :nome_input, '#customer_firstname'
    element :sobrenome_input, '#customer_lastname'
    element :email_input, '#email'
    element :senha_input, '#passwd'
    element :dia_nascimento_input, '#days > option:nth-child(14)'
    element :mes_nascimento_input, '#months > option:nth-child(4)'
    element :ano_nascimento_input, '#years > option:nth-child(25)'
    element :assinar_newslatter_input, '#uniform-newsletter'
    element :receber_oferta_input, '#uniform-optin'
    element :primeiro_nome_input, '#firstname'
    element :ultimo_nome_input, '#lastname'
    element :empresa_input, '#company'
    element :endereco_empresa_input, '#address1'
    element :endereco_2_empresa_input, '#address2'
    element :cidade_input, '#city'
    element :estado_input, '#id_state > option:nth-child(6)'
    element :codigo_postal_input, '#postcode'
    element :pais_input,'#id_country > option:nth-child(2)'
    element :informacao_adicional_input, '#other'
    element :telefone_casa_input,'#phone'
    element :telefone_celular_input, '#phone_mobile'
    element :endereco_alternativo_input, '#alias'
    
    #mapeamento buttons

    element :confirmar_cadastro_button, '#submitAccount'
    element :sign_in_button, 'a.login'
    element :confirmar_conta_button, '#SubmitCreate'

    def criar_email
        criacao_email_input.set 'Claudio.junior455@hotmail.com' 
    end

    def sign_in
        sign_in_button.click
    end

    def confirmar_conta
        confirmar_conta_button.click
    end

    def confirmar_cadastro
        confirmar_cadastro_button.click
    end

    #cadastro
    def preencher_formulario

    sexo_input.click
    nome_input.set 'Claudio'
    sobrenome_input.set 'Junior'
    senha_input.set '123456'
    dia_nascimento_input.click 
    mes_nascimento_input.click
    ano_nascimento_input.click
    assinar_newslatter_input.click
    receber_oferta_input.click
    primeiro_nome_input.set 'Stefanini'
    ultimo_nome_input.set 'BSB'
    empresa_input.set 'TI'
    endereco_empresa_input.set 'Edificio number one' 
    endereco_2_empresa_input.set 'Asa norte'
    cidade_input.set 'Brasilia - df'
    estado_input.click
    codigo_postal_input.set '00000'
    pais_input.click
    informacao_adicional_input.set 'Automatizando ...'
    telefone_casa_input.set '1234-123456-1234'
    telefone_celular_input.set '4321-654321-4321'
    endereco_alternativo_input.set 'Asa sul'
    end

    
end

