class User < ActiveRecord::Base

	validates_presence_of :registration, message: "Matricula é obrigatório"
	validates_uniqueness_of :registration, message: "Matricula existente"
	validates_numericality_of :registration, message: "Somente numeros" #pesquisar validação da matricula
	validates_length_of :registration, :maximum => 9, message: "Tamanho invalido"

	validates_presence_of :name, message: "Nome é obrigatório"
	validates_length_of :name, :maximum => 50, message: "Tamanho invalido"
  	validates_format_of :name, :with => /[A-Za-z]/, :on => :create, message: "Formato invalido"

	validates_length_of :last_name, :maximum => 50, message: "Tamanho invalido"
  	validates_format_of :last_name, :with => /[A-Za-z]/, :on => :create, message: "Formato invalido"

	validates_length_of :current_semester, :maximum => 16, message: "Semestre invalido, comente de 1 a 16"
  	validates_numericality_of :current_semester, message: "Somente numeros"
  	validates :current_semester, :numericality => { :greater_than_or_equal_to => 1 , :message => "não é permitido numeros negativos"}, :presence => { :message => "Campo obrigatório" }

	validates :year_registration, 
		presence: true,
		inclusion: { in: 2000..Date.today.year },
		format: { 
		with: /(20)\d{2}/i, 
		message: "should be a four-digit year"
	}

  	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates_presence_of :email, message: "Email é obrigatório"
	validates_uniqueness_of :email, message: "Email existente"

#implementar autenticação de usuario aqui

  def refresh!
    s = User.find_by_name(self.name)
  end

end