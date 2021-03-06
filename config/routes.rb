Rails.application.routes.draw do
  
  #Estableciendo como pagina de inicio
  root 'welcome#index'
  
  #Metodos para el login
  
  get '/login', to: 'login#login'
  
  post '/login', to: 'login#create'

  #metodos para el menu
  get '/help', to: 'welcome#help'

  get '/about', to: 'welcome#about'
  
  #metodos para cerrar sesion
  delete '/logout', to: 'login#delete'

  #Metodos de favio
  get 'boton/btn'

  get 'formularios/por_get'

  get 'formularios/por_post'

  post "boton/btn" => "boton#btn"
  
  post "boton/imprimir" => "boton#imprimir"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
