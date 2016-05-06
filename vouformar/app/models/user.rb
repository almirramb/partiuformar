class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	validates_presence_of :registration, message: "Matricula é obrigatório"
	validates_uniqueness_of :registration, message: "Matricula existente"
	validates_numericality_of :registration, message: "Somente numeros" #pesquisar validação da matricula
	validates_length_of :registration, :maximum => 9, message: "Máximo 9 digitos"

	validates_length_of :name, :maximum => 50, message: "Máximo 50 caracteres."
	validates_format_of :name, :with => /[A-Za-z]/, :on => :create, message: "Formato inválido"

	validates_length_of :last_name, :maximum => 50, message: "Máximo 50 caracteres"
	#validates_format_of :last_name, :with => /[A-Za-z]/, :on => :create, message: "Formato invalido"

	validates_length_of :current_semester, :maximum => 16, message: "Semestre invalido, comente de 1 a 16"
	validates_numericality_of :current_semester, message: "Somente numeros"
	validates :current_semester, :numericality => { :greater_than_or_equal_to => 0 , :message => "não é permitido numeros negativos"}

	validates :year_registration, 
	inclusion: {
		in: 2000..Date.today.year, 
		message: "Ano invalido" 
	},
	format: { 
		with: /(20)\d{2}/i, 
		message: "Formato invalido"
	}
	validates_presence_of :year_registration, message: "O ano de Ingresso é obrigatório"

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, message: "Formato invalido"
	validates_presence_of :email, message: "Email é obrigatório"
	validates_uniqueness_of :email, message: "Email existente"

	has_secure_password

	validates_presence_of :password, message: "Senha é obrigatório"
	validates_confirmation_of :password
	validates_length_of :password, :within => 6..40, message: "Mínimo 6 digitos"

	validates_presence_of :password_confirmation, message: "Confirmar Senha é obrigatório"
	validates_confirmation_of :password_confirmation
	validates_length_of :password_confirmation, :within => 6..40

#implementar autenticação de usuario aqui

	def User.digest(string)
	    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
	                                                  BCrypt::Engine.cost
	    BCrypt::Password.create(string, cost: cost)
  	end
end