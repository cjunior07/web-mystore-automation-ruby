#Claudio da Luz Andrade Junior
#Junior.andrade.360@hotmail.com
#Turno matutino

class Cadastro < SitePrism::Page

    def initialize
        @estrutura = EstruturaFormulario.new 
    end

    def sign_in
        @estrutura.sign_in
    end

    def criar_email
        @estrutura.criar_email
    end

    def confirmar_conta
        @estrutura.confirmar_conta
    end

    def cadastro
        @estrutura.preencher_formulario
        @estrutura.confirmar_cadastro
    end
end