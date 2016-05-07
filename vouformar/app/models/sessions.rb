class Session < ActiveRecord::Base

  validates_presence_of :registration, message: "Matricula é obrigatório"
	validates_numericality_of :registration, message: "Somente numeros" #pesquisar validação da matricula
	validates_length_of :registration, :maximum => 9, message: "Tamanho invalido"

  has_secure_password

  validates_presence_of :password, message: "Senha é obrigatório"
  validates_confirmation_of :password
  validates_length_of :password, :within => 6..40, message: "Mínimo 6 digitos"
end