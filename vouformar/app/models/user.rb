class User < ActiveRecord::Base
	has_one :address

	before_save { self.email = email.downcase }

	accepts_nested_attributes_for :address, allow_destroy: true

	validates_length_of :name, :maximum => 50, message: "Máximo 50 caracteres."
	validates_format_of :name, :with => /[A-Za-z]/, :on => :create, message: "Formato inválido"

	validates_length_of :last_name, :maximum => 50, message: "Máximo 50 caracteres"
	#validates_format_of :last_name, :with => /[A-Za-z]/, :on => :create, message: "Formato invalido"

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, message: "Formato invalido"
	validates_presence_of :email, message: "Email é obrigatório"
	validates_uniqueness_of :email, message: "Email existente"


	has_secure_password

	validates_presence_of :password, :on => :create, message: "Senha é obrigatório"
	validates_confirmation_of :password, :on => :create
	validates_length_of :password, :within => 6..40, :on => :create, message: "Mínimo 6 digitos"

	validates_presence_of :password_confirmation, :on => :create, message: "Confirmar Senha é obrigatório"
	validates_confirmation_of :password_confirmation, :on => :create
	validates_length_of :password_confirmation, :within => 6..40, :on => :create

	validates_confirmation_of :password, :allow_blank => true, :allow_nil => true, :on => :update
	validates_length_of :password, :within => 6..40, :allow_blank => true, :allow_nil => true, :on => :update, message: "Mínimo 6 digitos"

	validates_confirmation_of :password_confirmation, :allow_blank => true, :allow_nil => true, :on => :update
	validates_length_of :password_confirmation, :within => 6..40, :allow_blank => true, :allow_nil => true, :on => :update

#implementar autenticação de usuario aqui

	def User.digest(string)
	    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
	                                                  BCrypt::Engine.cost
	    BCrypt::Password.create(string, cost: cost)
  	end
end