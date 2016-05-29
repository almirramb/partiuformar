class AbstractCourse < ActiveRecord::Base
  validates_presence_of :name, message: "O nome é obrigatório"
  validates_presence_of :codeCourse, message: "o Codigo do curso é obrigatório"
  validates_numericality_of :codeCourse, message: "Somente numeros"
end
