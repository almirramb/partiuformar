class AbstractDiscipline < ActiveRecord::Base
  belongs_to :Department
  has_many :PreRequisite
  validates_presence_of :codeDiscipline, message: "Disciplina é obrigatório"
  validates_numericality_of :codeDiscipline, message: "Somente numeros"
	validates_presence_of :nameDiscipline, message: "Nome da disciplina é obrigatório"
	validates_presence_of :description, message: "A descricao não pode ser nula"
	validates_length_of :credits, :maximum => 2, message: "Máximo 2 digitos"
  validates_numericality_of :credits, message: "Somente numeros"
  validates_presence_of :credits, message: "Quantidade de Creditos é um campo obrigatorio"
end
