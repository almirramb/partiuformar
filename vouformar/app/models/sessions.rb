class Session < ActiveRecord::Base

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, message: "Formato invalido"
	validates_presence_of :email, message: "Email é obrigatório"
	validates_uniqueness_of :email, message: "Email existente"


	has_secure_password

	validates_presence_of :password, message: "Senha é obrigatório"
	validates_confirmation_of :password
	validates_length_of :password, :within => 6..40, message: "Mínimo 6 digitos"
end