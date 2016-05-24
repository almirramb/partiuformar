class Student < ActiveRecord::Base

	validates_presence_of :registration, message: "Matricula é obrigatório"
	validates_uniqueness_of :registration, message: "Matricula existente"
	validates_numericality_of :registration, message: "Somente numeros" #pesquisar validação da matricula
	validates_length_of :registration, :maximum => 9, message: "Máximo 9 digitos"

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

end
