class WelcomeController < ApplicationController
  
  #Nuevo sesion
  def new
  end

  #Crear Sesion
  def create
    #esta variable guardara el Json
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
