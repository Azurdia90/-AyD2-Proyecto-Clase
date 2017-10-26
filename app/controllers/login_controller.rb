class LoginController < ApplicationController

 #Nuevo sesion
 def login

 end

 #Crear Sesion
 def create
   user = 

   if user && user.authenticate(params[:session][:password])
     #log user
   else  
     #el usuario no exite
     flash[:danger] = 'El Usuario o Contraseña son incorrectos'
     render new
   end
end

#finalizar Sesion
def destoy
end

#Metodo hecho por Favio
def compareExcel
  p "hola"
end

end
