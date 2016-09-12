class User < ApplicationRecord
    #validates :name, :presence => true, :wrong_length => "Error personalizado"
    validates_presence_of :name, :message => "El campo no puede estar vacío"
    validates_presence_of :email, :message => "El campo no puede estar vacío"
    validates_presence_of :pass, :message => "El campo no puede estar vacío"
    
    validates_length_of :name, in:3..20, message: "El campo debe contener entre 3 y 20 caracteres"
    validates_length_of :email, in:5..80, message: "El campo debe contener entre 5 y 80 caracteres"
    validates_length_of :pass, in:6..20, message: "La constraseña debe tener entre 6 y 20 caracteres"
    
    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Formato incorrecto"

end
