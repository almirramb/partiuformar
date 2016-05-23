class Department < ActiveRecord::Base
  has_many :AbstractDiscipline

  validates_presence_of :name, message: "O nome é obrigatório"
  validates_presence_of :code, message: "o Codigo do departamento é obrigatório"
  validates_numericality_of :code, message: "Somente numeros"
end
