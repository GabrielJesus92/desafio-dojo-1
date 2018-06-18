#language: pt
#utf-8

Funcionalidade: Realizar Cadastro
Eu como usuário do site OrangeHRM
Quero acessar a aba de empregados
Para cadastrar um novo empregado

@cadastrar
Cenario: Cadastro válido de empregado
Dado que estou logado no site OrangeHRM
Quando eu acessar a aba PIM
Entao eu cadastro os dados de um novo empregado
