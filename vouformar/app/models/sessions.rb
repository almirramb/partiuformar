class Session < ActiveRecord::Base

validates_presence_of :registration, message: "Matricula é obrigatório"
	validates_numericality_of :registration, message: "Somente numeros" #pesquisar validação da matricula
	validates_length_of :registration, :maximum => 9, message: "Tamanho invalido"

  has_secure_password

	  validates :password,	:presence => true,
                       		:confirmation => true,
                       		:length => {:within => 6..40},
                       		:on => :create

    validates :password_confirmation,	:presence => true,
                       		:confirmation => true,
                       		:length => {:within => 6..40},
                       		:on => :create
end